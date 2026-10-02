CREATE TABLE purchase_order (
    purchase_order_id VARCHAR(30) PRIMARY KEY,

    supplier_id VARCHAR(20) NOT NULL,

    order_date DATE NOT NULL DEFAULT CURRENT_DATE,

    expected_delivery_date DATE,

    actual_delivery_date DATE,

    status VARCHAR(30) NOT NULL DEFAULT 'DRAFT',

    total_amount NUMERIC(12,2) NOT NULL DEFAULT 0,

    tax_amount NUMERIC(12,2) NOT NULL DEFAULT 0,

    discount_amount NUMERIC(12,2) NOT NULL DEFAULT 0,

    final_amount NUMERIC(12,2) NOT NULL DEFAULT 0,

    notes TEXT,

    created_by VARCHAR(100),

    approved_by VARCHAR(100),

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_purchase_order_supplier
        FOREIGN KEY (supplier_id)
        REFERENCES supplier(supplier_id),

    CONSTRAINT chk_purchase_order_status
        CHECK (
            status IN (
                'DRAFT',
                'PENDING',
                'APPROVED',
                'ORDERED',
                'PARTIALLY_RECEIVED',
                'RECEIVED',
                'CANCELLED'
            )
        ),

    CONSTRAINT chk_po_total
        CHECK (total_amount >= 0),

    CONSTRAINT chk_po_tax
        CHECK (tax_amount >= 0),

    CONSTRAINT chk_po_discount
        CHECK (discount_amount >= 0),

    CONSTRAINT chk_po_final
        CHECK (final_amount >= 0),

    CONSTRAINT chk_expected_delivery
        CHECK (
            expected_delivery_date IS NULL
            OR expected_delivery_date >= order_date
        )
);