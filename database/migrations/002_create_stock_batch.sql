CREATE TABLE stock_batch (
    batch_id VARCHAR(30) PRIMARY KEY,

    material_id VARCHAR(20) NOT NULL,

    quantity NUMERIC(12,3) NOT NULL,

    purchase_date DATE NOT NULL,
    expiry_date DATE,

    purchase_price NUMERIC(12,2) NOT NULL,

    CONSTRAINT fk_batch_material
        FOREIGN KEY (material_id)
        REFERENCES raw_material(material_id),

    CONSTRAINT chk_batch_quantity
        CHECK (quantity >= 0),

    CONSTRAINT chk_batch_price
        CHECK (purchase_price >= 0),

    CONSTRAINT chk_batch_expiry
        CHECK (
            expiry_date IS NULL
            OR expiry_date >= purchase_date
        )
);