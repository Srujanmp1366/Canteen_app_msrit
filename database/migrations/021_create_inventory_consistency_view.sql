CREATE VIEW inventory_quantity_mismatch AS
SELECT
    rm.material_id,
    rm.name,
    rm.current_quantity,
    COALESCE(SUM(sb.quantity), 0) AS batch_quantity,
    rm.current_quantity - COALESCE(SUM(sb.quantity), 0) AS difference
FROM raw_material rm
LEFT JOIN stock_batch sb
    ON rm.material_id = sb.material_id
GROUP BY
    rm.material_id,
    rm.name,
    rm.current_quantity
HAVING
    rm.current_quantity <> COALESCE(SUM(sb.quantity), 0);