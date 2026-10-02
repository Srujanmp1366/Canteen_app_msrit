CREATE TABLE purchase_order_item (
    purchase_order_item_id VARCHAR(30) PRIMARY KEY,

    purchase_order_id VARCHAR(30) NOT NULL,

    material_id VARCHAR(20) NOT NULL,

    ordered_quantity NUMERIC(12,3) NOT NULL,

    received_quantity NUMERIC(12,3) NOT NULL DEFAULT 0,

    unit_price NUMERIC(12,2) NOT NULL,

    line_total NUMERIC(12,2) NOT NULL,

    notes TEXT,

    CONSTRAINT fk_po_item_order
        FOREIGN KEY (purchase_order_id)
        REFERENCES purchase_order(purchase_order_id),

    CONSTRAINT fk_po_item_material
        FOREIGN KEY (material_id)
        REFERENCES raw_material(material_id),

    CONSTRAINT chk_po_item_ordered_quantity
        CHECK (ordered_quantity > 0),

    CONSTRAINT chk_po_item_received_quantity
        CHECK (received_quantity >= 0),

    CONSTRAINT chk_po_item_received_limit
        CHECK (received_quantity <= ordered_quantity),

    CONSTRAINT chk_po_item_unit_price
        CHECK (unit_price >= 0),

    CONSTRAINT chk_po_item_line_total
        CHECK (line_total >= 0),

    CONSTRAINT uq_po_material
        UNIQUE (purchase_order_id, material_id)
);