CREATE TABLE stock_adjustment (
    adjustment_id VARCHAR(30) PRIMARY KEY,

    material_id VARCHAR(20) NOT NULL,

    batch_id VARCHAR(30),

    system_quantity NUMERIC(12,3) NOT NULL,

    actual_quantity NUMERIC(12,3) NOT NULL,

    adjustment_quantity NUMERIC(12,3) NOT NULL,

    reason VARCHAR(100) NOT NULL,

    notes TEXT,

    adjusted_by VARCHAR(100) NOT NULL,

    adjustment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_adjustment_material
        FOREIGN KEY (material_id)
        REFERENCES raw_material(material_id),

    CONSTRAINT fk_adjustment_batch
        FOREIGN KEY (batch_id)
        REFERENCES stock_batch(batch_id),

    CONSTRAINT chk_adjustment_system_quantity
        CHECK (system_quantity >= 0),

    CONSTRAINT chk_adjustment_actual_quantity
        CHECK (actual_quantity >= 0)
);