CREATE INDEX idx_supplier_name
ON supplier(supplier_name);

CREATE INDEX idx_purchase_order_supplier
ON purchase_order(supplier_id);

CREATE INDEX idx_purchase_order_status
ON purchase_order(status);

CREATE INDEX idx_purchase_order_date
ON purchase_order(order_date);

CREATE INDEX idx_po_item_order
ON purchase_order_item(purchase_order_id);

CREATE INDEX idx_po_item_material
ON purchase_order_item(material_id);

CREATE INDEX idx_adjustment_material
ON stock_adjustment(material_id);

CREATE INDEX idx_adjustment_date
ON stock_adjustment(adjustment_date);

CREATE INDEX idx_wastage_material
ON wastage_record(material_id);

CREATE INDEX idx_wastage_date
ON wastage_record(wastage_date);

CREATE INDEX idx_audit_material
ON inventory_audit(material_id);

CREATE INDEX idx_audit_date
ON inventory_audit(audit_date);