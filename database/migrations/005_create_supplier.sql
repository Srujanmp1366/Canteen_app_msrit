CREATE TABLE supplier (
    supplier_id VARCHAR(20) PRIMARY KEY,

    supplier_name VARCHAR(120) NOT NULL,

    contact_person VARCHAR(100),

    phone VARCHAR(20),

    email VARCHAR(120),

    address TEXT,

    gst_number VARCHAR(20),

    supplier_type VARCHAR(50),

    payment_terms VARCHAR(100),

    rating NUMERIC(2,1),

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT chk_supplier_rating
        CHECK (rating IS NULL OR (rating >= 0 AND rating <= 5))
);