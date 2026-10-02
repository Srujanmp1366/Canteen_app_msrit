CREATE TABLE stock_transaction (
    transaction_id VARCHAR(30) PRIMARY KEY,

    material_id VARCHAR(20) NOT NULL,

    batch_id VARCHAR(30),

    transaction_type VARCHAR(20) NOT NULL,

    quantity NUMERIC(12,3) NOT NULL,

    transaction_date TIMESTAMP NOT NULL
        DEFAULT CURRENT_TIMESTAMP,

    reference_id VARCHAR(50),

    reference_type VARCHAR(50),

    notes TEXT,

    created_by VARCHAR(100),

    CONSTRAINT fk_transaction_material
        FOREIGN KEY (material_id)
        REFERENCES raw_material(material_id),

    CONSTRAINT fk_transaction_batch
        FOREIGN KEY (batch_id)
        REFERENCES stock_batch(batch_id),

    CONSTRAINT chk_transaction_quantity
        CHECK (quantity > 0),

    CONSTRAINT chk_transaction_type
        CHECK (
            transaction_type IN (
                'STOCK_IN',
                'STOCK_OUT',
                'ADJUSTMENT',
                'TRANSFER'
            )
        )
);