ALTER TABLE purchase_order
ADD CONSTRAINT chk_actual_delivery
CHECK (
    actual_delivery_date IS NULL
    OR actual_delivery_date >= order_date
);

CREATE UNIQUE INDEX uq_supplier_gst_number
ON supplier(gst_number)
WHERE gst_number IS NOT NULL;


CREATE UNIQUE INDEX uq_supplier_email
ON supplier(email)
WHERE email IS NOT NULL;
