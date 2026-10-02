CREATE TABLE supplier_material (
    supplier_id VARCHAR(20) NOT NULL,

    material_id VARCHAR(20) NOT NULL,

    supplier_price NUMERIC(12,2),

    minimum_order_quantity NUMERIC(12,3),

    lead_time_days INTEGER,

    is_preferred BOOLEAN NOT NULL DEFAULT FALSE,

    last_purchase_date DATE,

    PRIMARY KEY (
        supplier_id,
        material_id
    ),

    CONSTRAINT fk_supplier_material_supplier
        FOREIGN KEY (supplier_id)
        REFERENCES supplier(supplier_id),

    CONSTRAINT fk_supplier_material_material
        FOREIGN KEY (material_id)
        REFERENCES raw_material(material_id),

    CONSTRAINT chk_supplier_material_price
        CHECK (
            supplier_price IS NULL
            OR supplier_price >= 0
        ),

    CONSTRAINT chk_supplier_material_minimum
        CHECK (
            minimum_order_quantity IS NULL
            OR minimum_order_quantity > 0
        ),

    CONSTRAINT chk_supplier_material_lead_time
        CHECK (
            lead_time_days IS NULL
            OR lead_time_days >= 0
        )
);