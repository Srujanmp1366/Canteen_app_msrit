CREATE TABLE inventory_audit (
    audit_id VARCHAR(30) PRIMARY KEY,

    audit_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    material_id VARCHAR(20) NOT NULL,

    recorded_quantity NUMERIC(12,3) NOT NULL,

    physical_quantity NUMERIC(12,3) NOT NULL,

    variance NUMERIC(12,3) NOT NULL,

    auditor_name VARCHAR(100) NOT NULL,

    remarks TEXT,

    CONSTRAINT fk_audit_material
        FOREIGN KEY (material_id)
        REFERENCES raw_material(material_id),

    CONSTRAINT chk_audit_recorded_quantity
        CHECK (recorded_quantity >= 0),

    CONSTRAINT chk_audit_physical_quantity
        CHECK (physical_quantity >= 0)
);