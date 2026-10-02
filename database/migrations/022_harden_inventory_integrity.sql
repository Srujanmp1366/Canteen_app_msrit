-- Strengthen cross-column integrity and keep raw_material.current_quantity
-- synchronized with the sum of stock_batch quantities.

ALTER TABLE purchase_order_item
ADD CONSTRAINT chk_po_item_line_total_math
CHECK (line_total = ROUND(ordered_quantity * unit_price, 2));

ALTER TABLE purchase_order
ADD CONSTRAINT chk_po_final_amount_math
CHECK (final_amount = ROUND(total_amount + tax_amount - discount_amount, 2));

ALTER TABLE stock_adjustment
ADD CONSTRAINT chk_adjustment_quantity_math
CHECK (adjustment_quantity = actual_quantity - system_quantity);

ALTER TABLE inventory_audit
ADD CONSTRAINT chk_inventory_audit_variance_math
CHECK (variance = physical_quantity - recorded_quantity);

ALTER TABLE stock_batch
ADD CONSTRAINT chk_stock_batch_received_date
CHECK (
    received_date IS NULL
    OR received_date >= purchase_date
);

CREATE OR REPLACE FUNCTION sync_raw_material_quantity_from_batches()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'DELETE' THEN
        UPDATE raw_material
        SET current_quantity = COALESCE(
            (SELECT SUM(quantity)
             FROM stock_batch
             WHERE material_id = OLD.material_id),
            0
        )
        WHERE material_id = OLD.material_id;

        RETURN OLD;
    END IF;

    UPDATE raw_material
    SET current_quantity = COALESCE(
        (SELECT SUM(quantity)
         FROM stock_batch
         WHERE material_id = NEW.material_id),
        0
    )
    WHERE material_id = NEW.material_id;

    IF TG_OP = 'UPDATE'
       AND OLD.material_id IS DISTINCT FROM NEW.material_id THEN
        UPDATE raw_material
        SET current_quantity = COALESCE(
            (SELECT SUM(quantity)
             FROM stock_batch
             WHERE material_id = OLD.material_id),
            0
        )
        WHERE material_id = OLD.material_id;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_stock_batch_sync_quantity_insert
AFTER INSERT ON stock_batch
FOR EACH ROW
EXECUTE FUNCTION sync_raw_material_quantity_from_batches();

CREATE TRIGGER trg_stock_batch_sync_quantity_update
AFTER UPDATE OF quantity, material_id ON stock_batch
FOR EACH ROW
EXECUTE FUNCTION sync_raw_material_quantity_from_batches();

CREATE TRIGGER trg_stock_batch_sync_quantity_delete
AFTER DELETE ON stock_batch
FOR EACH ROW
EXECUTE FUNCTION sync_raw_material_quantity_from_batches();

-- Bring existing material totals in line with batches once this migration is applied.
UPDATE raw_material rm
SET current_quantity = COALESCE(
    (SELECT SUM(sb.quantity)
     FROM stock_batch sb
     WHERE sb.material_id = rm.material_id),
    0
);
