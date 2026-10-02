CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER trg_raw_material_updated_at
BEFORE UPDATE ON raw_material
FOR EACH ROW
EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER trg_supplier_updated_at
BEFORE UPDATE ON supplier
FOR EACH ROW
EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER trg_purchase_order_updated_at
BEFORE UPDATE ON purchase_order
FOR EACH ROW
EXECUTE FUNCTION update_updated_at_column();