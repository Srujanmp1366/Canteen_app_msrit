CREATE INDEX idx_supplier_material_material
ON supplier_material(material_id);

CREATE INDEX idx_supplier_material_preferred
ON supplier_material(is_preferred);

CREATE INDEX idx_stock_batch_po_item
ON stock_batch(purchase_order_item_id);

CREATE INDEX idx_stock_batch_expiry
ON stock_batch(expiry_date);

CREATE INDEX idx_stock_batch_storage
ON stock_batch(storage_location);

CREATE INDEX idx_raw_material_category
ON raw_material(category);

CREATE INDEX idx_raw_material_active
ON raw_material(is_active);

CREATE INDEX idx_raw_material_quantity
ON raw_material(current_quantity);

CREATE INDEX idx_audit_session_date
ON inventory_audit_session(audit_date);