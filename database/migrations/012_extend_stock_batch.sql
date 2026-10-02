ALTER TABLE stock_batch
ADD COLUMN purchase_order_item_id VARCHAR(30);

ALTER TABLE stock_batch
ADD COLUMN initial_quantity NUMERIC(12,3);

ALTER TABLE stock_batch
ADD COLUMN received_date DATE;

ALTER TABLE stock_batch
ADD COLUMN batch_number VARCHAR(50);

ALTER TABLE stock_batch
ADD COLUMN storage_location VARCHAR(100);

ALTER TABLE stock_batch
ADD COLUMN created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE stock_batch
ADD CONSTRAINT fk_batch_purchase_order_item
FOREIGN KEY (purchase_order_item_id)
REFERENCES purchase_order_item(purchase_order_item_id);

ALTER TABLE stock_batch
ADD CONSTRAINT chk_batch_initial_quantity
CHECK (
    initial_quantity IS NULL
    OR initial_quantity > 0
);

ALTER TABLE stock_batch
ADD CONSTRAINT chk_batch_remaining_quantity
CHECK (
    initial_quantity IS NULL
    OR quantity <= initial_quantity
);