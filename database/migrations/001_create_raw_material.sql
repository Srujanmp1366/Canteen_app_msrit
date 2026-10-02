CREATE TABLE raw_material (
    material_id VARCHAR(20) PRIMARY KEY,

    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit VARCHAR(20) NOT NULL,

    reorder_level NUMERIC(12,3) NOT NULL DEFAULT 0,
    current_quantity NUMERIC(12,3) NOT NULL DEFAULT 0,

    price_per_unit NUMERIC(12,2) NOT NULL DEFAULT 0,

    expiry_required BOOLEAN NOT NULL DEFAULT FALSE,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT chk_material_quantity
        CHECK (current_quantity >= 0),

    CONSTRAINT chk_reorder_level
        CHECK (reorder_level >= 0),

    CONSTRAINT chk_material_price
        CHECK (price_per_unit >= 0)
);