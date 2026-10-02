INSERT INTO raw_material (
    material_id,
    name,
    category,
    unit,
    reorder_level,
    current_quantity,
    price_per_unit,
    expiry_required
)
VALUES
(
    'MAT-001',
    'Rice',
    'Grains',
    'KG',
    20,
    100,
    55.00,
    FALSE
),
(
    'MAT-002',
    'Milk',
    'Dairy',
    'LITRE',
    10,
    25,
    60.00,
    TRUE
),
(
    'MAT-003',
    'Cooking Oil',
    'Grocery',
    'LITRE',
    8,
    15,
    130.00,
    TRUE
);


INSERT INTO stock_batch (
    batch_id,
    material_id,
    quantity,
    purchase_date,
    expiry_date,
    purchase_price
)
VALUES
(
    'BAT-001',
    'MAT-001',
    100,
    CURRENT_DATE,
    NULL,
    52.00
),
(
    'BAT-002',
    'MAT-002',
    25,
    CURRENT_DATE,
    CURRENT_DATE + 5,
    57.00
),
(
    'BAT-003',
    'MAT-003',
    15,
    CURRENT_DATE,
    CURRENT_DATE + 90,
    122.00
);


INSERT INTO stock_transaction (
    transaction_id,
    material_id,
    batch_id,
    transaction_type,
    quantity,
    reference_id,
    reference_type,
    notes,
    created_by
)
VALUES
(
    'TXN-001',
    'MAT-001',
    'BAT-001',
    'STOCK_IN',
    100,
    'OPENING-001',
    'OPENING_STOCK',
    'Initial Rice stock',
    'Inventory Manager'
),
(
    'TXN-002',
    'MAT-002',
    'BAT-002',
    'STOCK_IN',
    25,
    'OPENING-002',
    'OPENING_STOCK',
    'Initial Milk stock',
    'Inventory Manager'
),
(
    'TXN-003',
    'MAT-003',
    'BAT-003',
    'STOCK_IN',
    15,
    'OPENING-003',
    'OPENING_STOCK',
    'Initial Cooking Oil stock',
    'Inventory Manager'
);


