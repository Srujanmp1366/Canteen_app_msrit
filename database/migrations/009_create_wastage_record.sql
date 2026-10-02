CREATE TABLE wastage_record (
    wastage_id VARCHAR(30) PRIMARY KEY,

    material_id VARCHAR(20) NOT NULL,

    batch_id VARCHAR(30),

    quantity NUMERIC(12,3) NOT NULL,

    reason VARCHAR(100) NOT NULL,

    wastage_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    recorded_by VARCHAR(100) NOT NULL,

    notes TEXT,

    CONSTRAINT fk_wastage_material
        FOREIGN KEY (material_id)
        REFERENCES raw_material(material_id),

    CONSTRAINT fk_wastage_batch
        FOREIGN KEY (batch_id)
        REFERENCES stock_batch(batch_id),

    CONSTRAINT chk_wastage_quantity
        CHECK (quantity > 0)
);