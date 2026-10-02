CREATE VIEW inventory_stock_summary AS
SELECT
    rm.material_id,
    rm.name,
    rm.category,
    rm.unit,
    rm.reorder_level,
    rm.current_quantity,
    COALESCE(SUM(sb.quantity), 0) AS batch_quantity,
    rm.price_per_unit,
    rm.is_active
FROM raw_material rm
LEFT JOIN stock_batch sb
    ON rm.material_id = sb.material_id
GROUP BY
    rm.material_id,
    rm.name,
    rm.category,
    rm.unit,
    rm.reorder_level,
    rm.current_quantity,
    rm.price_per_unit,
    rm.is_active;

    CREATE VIEW low_stock_materials AS
SELECT
    material_id,
    name,
    category,
    unit,
    current_quantity,
    reorder_level
FROM raw_material
WHERE
    is_active = TRUE
    AND current_quantity <= reorder_level;

    CREATE VIEW expiring_stock_batches AS
SELECT
    sb.batch_id,
    sb.material_id,
    rm.name AS material_name,
    sb.quantity,
    sb.expiry_date,
    sb.storage_location,
    sb.batch_number
FROM stock_batch sb
JOIN raw_material rm
    ON sb.material_id = rm.material_id
WHERE
    sb.quantity > 0
    AND sb.expiry_date IS NOT NULL
    AND sb.expiry_date >= CURRENT_DATE
    AND sb.expiry_date <= CURRENT_DATE + 7;

    CREATE VIEW expired_stock_batches AS
SELECT
    sb.batch_id,
    sb.material_id,
    rm.name AS material_name,
    sb.quantity,
    sb.expiry_date,
    sb.storage_location
FROM stock_batch sb
JOIN raw_material rm
    ON sb.material_id = rm.material_id
WHERE
    sb.quantity > 0
    AND sb.expiry_date < CURRENT_DATE;

    CREATE VIEW purchase_order_summary AS
SELECT
    po.purchase_order_id,
    s.supplier_name,
    po.order_date,
    po.expected_delivery_date,
    po.actual_delivery_date,
    po.status,
    po.total_amount,
    po.tax_amount,
    po.discount_amount,
    po.final_amount
FROM purchase_order po
JOIN supplier s
    ON po.supplier_id = s.supplier_id;