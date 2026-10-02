CREATE INDEX idx_stock_batch_material_id
ON stock_batch(material_id);

CREATE INDEX idx_stock_transaction_material_id
ON stock_transaction(material_id);

CREATE INDEX idx_stock_transaction_batch_id
ON stock_transaction(batch_id);

CREATE INDEX idx_stock_transaction_date
ON stock_transaction(transaction_date);