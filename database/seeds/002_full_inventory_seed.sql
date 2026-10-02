INSERT INTO supplier (
    supplier_id,
    supplier_name,
    contact_person,
    phone,
    email,
    address,
    gst_number,
    supplier_type,
    payment_terms,
    rating
)
VALUES
('SUP-001', 'Bangalore Food Distributors', 'Ramesh Kumar', '9876543210',
 'ramesh@bfd.example', 'Yeshwanthpur, Bengaluru',
 '29ABCDE1234F1Z5', 'GRAINS', 'NET 30', 4.5),

('SUP-002', 'Fresh Dairy Supplies', 'Anil Rao', '9876543211',
 'anil@freshdairy.example', 'Malleshwaram, Bengaluru',
 '29ABCDE5678F1Z2', 'DAIRY', 'NET 15', 4.7),

('SUP-003', 'Green Basket Vegetables', 'Suresh Gowda', '9876543212',
 'suresh@greenbasket.example', 'KR Market, Bengaluru',
 '29ABCDE9012F1Z8', 'VEGETABLES', 'WEEKLY', 4.4),

('SUP-004', 'Metro Grocery Wholesale', 'Priya Shah', '9876543213',
 'priya@metrogrocery.example', 'Peenya, Bengaluru',
 '29ABCDE3456F1Z4', 'GROCERY', 'NET 30', 4.6),

('SUP-005', 'Campus Beverage Distributors', 'Mahesh R', '9876543214',
 'mahesh@beverages.example', 'Rajajinagar, Bengaluru',
 '29ABCDE7890F1Z7', 'BEVERAGES', 'NET 15', 4.3),

('SUP-006', 'Bengaluru Bakery Supplies', 'Naveen Kumar', '9876543215',
 'naveen@bakery.example', 'Vijayanagar, Bengaluru',
 '29ABCDE2468F1Z1', 'BAKERY', 'NET 15', 4.2);


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
('MAT-004', 'Wheat Flour', 'Grains', 'KG', 20, 75, 48.00, FALSE),
('MAT-005', 'Toor Dal', 'Pulses', 'KG', 15, 40, 145.00, FALSE),
('MAT-006', 'Urad Dal', 'Pulses', 'KG', 10, 30, 165.00, FALSE),
('MAT-007', 'Sugar', 'Grocery', 'KG', 15, 50, 48.00, FALSE),
('MAT-008', 'Salt', 'Grocery', 'KG', 10, 35, 22.00, FALSE),
('MAT-009', 'Potato', 'Vegetables', 'KG', 20, 55, 35.00, TRUE),
('MAT-010', 'Onion', 'Vegetables', 'KG', 20, 60, 42.00, TRUE),
('MAT-011', 'Tomato', 'Vegetables', 'KG', 15, 40, 38.00, TRUE),
('MAT-012', 'Carrot', 'Vegetables', 'KG', 8, 18, 55.00, TRUE),
('MAT-013', 'Beans', 'Vegetables', 'KG', 8, 14, 70.00, TRUE),
('MAT-014', 'Capsicum', 'Vegetables', 'KG', 5, 10, 85.00, TRUE),
('MAT-015', 'Curd', 'Dairy', 'KG', 10, 20, 75.00, TRUE),
('MAT-016', 'Paneer', 'Dairy', 'KG', 5, 12, 340.00, TRUE),
('MAT-017', 'Butter', 'Dairy', 'KG', 5, 8, 520.00, TRUE),
('MAT-018', 'Tea Powder', 'Beverages', 'KG', 5, 12, 380.00, FALSE),
('MAT-019', 'Coffee Powder', 'Beverages', 'KG', 5, 10, 520.00, FALSE),
('MAT-020', 'Bread', 'Bakery', 'PACKET', 10, 25, 45.00, TRUE),
('MAT-021', 'Cheese', 'Dairy', 'KG', 5, 8, 480.00, TRUE),
('MAT-022', 'Green Chilli', 'Vegetables', 'KG', 3, 6, 90.00, TRUE),
('MAT-023', 'Ginger', 'Vegetables', 'KG', 3, 5, 140.00, TRUE),
('MAT-024', 'Garlic', 'Vegetables', 'KG', 3, 7, 180.00, TRUE),
('MAT-025', 'Coriander', 'Vegetables', 'KG', 2, 5, 120.00, TRUE),
('MAT-026', 'Coconut', 'Grocery', 'PIECE', 20, 45, 35.00, TRUE),
('MAT-027', 'Semolina', 'Grains', 'KG', 10, 30, 52.00, FALSE),
('MAT-028', 'Maida', 'Grains', 'KG', 10, 25, 44.00, FALSE),
('MAT-029', 'Sambar Powder', 'Spices', 'KG', 4, 10, 290.00, FALSE),
('MAT-030', 'Turmeric Powder', 'Spices', 'KG', 3, 8, 230.00, FALSE);


INSERT INTO supplier_material (
    supplier_id,
    material_id,
    supplier_price,
    minimum_order_quantity,
    lead_time_days,
    is_preferred,
    last_purchase_date
)
VALUES
('SUP-001', 'MAT-001', 52.00, 50, 2, TRUE, CURRENT_DATE - 10),
('SUP-001', 'MAT-004', 45.00, 25, 2, TRUE, CURRENT_DATE - 8),
('SUP-001', 'MAT-005', 138.00, 20, 3, TRUE, CURRENT_DATE - 12),
('SUP-001', 'MAT-006', 158.00, 15, 3, TRUE, CURRENT_DATE - 15),
('SUP-001', 'MAT-027', 48.00, 20, 2, TRUE, CURRENT_DATE - 11),
('SUP-001', 'MAT-028', 41.00, 20, 2, TRUE, CURRENT_DATE - 7),

('SUP-002', 'MAT-002', 57.00, 20, 1, TRUE, CURRENT_DATE - 3),
('SUP-002', 'MAT-015', 70.00, 10, 1, TRUE, CURRENT_DATE - 5),
('SUP-002', 'MAT-016', 325.00, 5, 1, TRUE, CURRENT_DATE - 4),
('SUP-002', 'MAT-017', 495.00, 5, 2, TRUE, CURRENT_DATE - 9),
('SUP-002', 'MAT-021', 455.00, 5, 2, TRUE, CURRENT_DATE - 6),

('SUP-003', 'MAT-009', 31.00, 20, 1, TRUE, CURRENT_DATE - 2),
('SUP-003', 'MAT-010', 38.00, 20, 1, TRUE, CURRENT_DATE - 2),
('SUP-003', 'MAT-011', 34.00, 20, 1, TRUE, CURRENT_DATE - 2),
('SUP-003', 'MAT-012', 50.00, 10, 1, TRUE, CURRENT_DATE - 2),
('SUP-003', 'MAT-013', 65.00, 10, 1, TRUE, CURRENT_DATE - 2),
('SUP-003', 'MAT-014', 78.00, 5, 1, TRUE, CURRENT_DATE - 2),
('SUP-003', 'MAT-022', 82.00, 5, 1, TRUE, CURRENT_DATE - 2),
('SUP-003', 'MAT-023', 130.00, 5, 1, TRUE, CURRENT_DATE - 2),
('SUP-003', 'MAT-024', 170.00, 5, 1, TRUE, CURRENT_DATE - 2),
('SUP-003', 'MAT-025', 110.00, 3, 1, TRUE, CURRENT_DATE - 2),

('SUP-004', 'MAT-003', 122.00, 10, 2, TRUE, CURRENT_DATE - 10),
('SUP-004', 'MAT-007', 44.00, 20, 2, TRUE, CURRENT_DATE - 8),
('SUP-004', 'MAT-008', 19.00, 20, 2, TRUE, CURRENT_DATE - 8),
('SUP-004', 'MAT-026', 31.00, 20, 2, TRUE, CURRENT_DATE - 5),
('SUP-004', 'MAT-029', 275.00, 5, 3, TRUE, CURRENT_DATE - 15),
('SUP-004', 'MAT-030', 215.00, 5, 3, TRUE, CURRENT_DATE - 15),

('SUP-005', 'MAT-018', 360.00, 5, 2, TRUE, CURRENT_DATE - 9),
('SUP-005', 'MAT-019', 495.00, 5, 2, TRUE, CURRENT_DATE - 9),

('SUP-006', 'MAT-020', 40.00, 15, 1, TRUE, CURRENT_DATE - 3);



INSERT INTO purchase_order (
    purchase_order_id,
    supplier_id,
    order_date,
    expected_delivery_date,
    actual_delivery_date,
    status,
    total_amount,
    tax_amount,
    discount_amount,
    final_amount,
    notes,
    created_by,
    approved_by
)
VALUES
(
    'PO-001',
    'SUP-001',
    CURRENT_DATE - 12,
    CURRENT_DATE - 10,
    CURRENT_DATE - 10,
    'RECEIVED',
    9200.00,
    460.00,
    200.00,
    9460.00,
    'Monthly grains procurement',
    'Inventory Manager',
    'Canteen Manager'
),
(
    'PO-002',
    'SUP-002',
    CURRENT_DATE - 6,
    CURRENT_DATE - 5,
    CURRENT_DATE - 5,
    'RECEIVED',
    6800.00,
    340.00,
    150.00,
    6990.00,
    'Dairy stock replenishment',
    'Inventory Manager',
    'Canteen Manager'
),
(
    'PO-003',
    'SUP-003',
    CURRENT_DATE - 3,
    CURRENT_DATE - 2,
    CURRENT_DATE - 2,
    'RECEIVED',
    5100.00,
    255.00,
    100.00,
    5255.00,
    'Fresh vegetable purchase',
    'Inventory Manager',
    'Canteen Manager'
),
(
    'PO-004',
    'SUP-004',
    CURRENT_DATE - 8,
    CURRENT_DATE - 6,
    CURRENT_DATE - 6,
    'RECEIVED',
    6200.00,
    310.00,
    120.00,
    6390.00,
    'General grocery procurement',
    'Inventory Manager',
    'Canteen Manager'
),
(
    'PO-005',
    'SUP-005',
    CURRENT_DATE - 5,
    CURRENT_DATE - 3,
    NULL,
    'ORDERED',
    4200.00,
    210.00,
    0.00,
    4410.00,
    'Tea and coffee procurement',
    'Inventory Manager',
    'Canteen Manager'
);


INSERT INTO purchase_order_item (
    purchase_order_item_id,
    purchase_order_id,
    material_id,
    ordered_quantity,
    received_quantity,
    unit_price,
    line_total,
    notes
)
VALUES
('POI-001', 'PO-001', 'MAT-001', 100, 100, 52.00, 5200.00, 'Rice'),
('POI-002', 'PO-001', 'MAT-004', 50, 50, 45.00, 2250.00, 'Wheat flour'),
('POI-003', 'PO-001', 'MAT-005', 10, 10, 138.00, 1380.00, 'Toor dal'),

('POI-004', 'PO-002', 'MAT-002', 40, 40, 57.00, 2280.00, 'Milk'),
('POI-005', 'PO-002', 'MAT-015', 20, 20, 70.00, 1400.00, 'Curd'),
('POI-006', 'PO-002', 'MAT-016', 8, 8, 325.00, 2600.00, 'Paneer'),

('POI-007', 'PO-003', 'MAT-009', 50, 50, 31.00, 1550.00, 'Potato'),
('POI-008', 'PO-003', 'MAT-010', 50, 50, 38.00, 1900.00, 'Onion'),
('POI-009', 'PO-003', 'MAT-011', 40, 40, 34.00, 1360.00, 'Tomato'),

('POI-010', 'PO-004', 'MAT-003', 20, 20, 122.00, 2440.00, 'Cooking oil'),
('POI-011', 'PO-004', 'MAT-007', 30, 30, 44.00, 1320.00, 'Sugar'),
('POI-012', 'PO-004', 'MAT-008', 20, 20, 19.00, 380.00, 'Salt'),

('POI-013', 'PO-005', 'MAT-018', 5, 0, 360.00, 1800.00, 'Tea powder'),
('POI-014', 'PO-005', 'MAT-019', 4, 0, 495.00, 1980.00, 'Coffee powder');



INSERT INTO stock_batch (
    batch_id,
    material_id,
    quantity,
    purchase_date,
    expiry_date,
    purchase_price,
    purchase_order_item_id,
    initial_quantity,
    received_date,
    batch_number,
    storage_location
)
VALUES
('BAT-101', 'MAT-001', 80, CURRENT_DATE - 10, NULL, 52.00,
 'POI-001', 100, CURRENT_DATE - 10, 'RICE-OCT-A', 'Dry Store A1'),

('BAT-102', 'MAT-004', 45, CURRENT_DATE - 10, NULL, 45.00,
 'POI-002', 50, CURRENT_DATE - 10, 'WHEAT-OCT-A', 'Dry Store A2'),

('BAT-103', 'MAT-002', 22, CURRENT_DATE - 5, CURRENT_DATE + 2, 57.00,
 'POI-004', 40, CURRENT_DATE - 5, 'MILK-OCT-A', 'Cold Storage C1'),

('BAT-104', 'MAT-015', 12, CURRENT_DATE - 5, CURRENT_DATE + 3, 70.00,
 'POI-005', 20, CURRENT_DATE - 5, 'CURD-OCT-A', 'Cold Storage C1'),

('BAT-105', 'MAT-016', 5, CURRENT_DATE - 5, CURRENT_DATE + 4, 325.00,
 'POI-006', 8, CURRENT_DATE - 5, 'PANEER-OCT-A', 'Cold Storage C2'),

('BAT-106', 'MAT-009', 42, CURRENT_DATE - 2, CURRENT_DATE + 5, 31.00,
 'POI-007', 50, CURRENT_DATE - 2, 'POTATO-OCT-A', 'Vegetable Rack V1'),

('BAT-107', 'MAT-010', 44, CURRENT_DATE - 2, CURRENT_DATE + 7, 38.00,
 'POI-008', 50, CURRENT_DATE - 2, 'ONION-OCT-A', 'Vegetable Rack V1'),

('BAT-108', 'MAT-011', 30, CURRENT_DATE - 2, CURRENT_DATE + 4, 34.00,
 'POI-009', 40, CURRENT_DATE - 2, 'TOMATO-OCT-A', 'Vegetable Rack V2'),

('BAT-109', 'MAT-003', 16, CURRENT_DATE - 6, CURRENT_DATE + 120, 122.00,
 'POI-010', 20, CURRENT_DATE - 6, 'OIL-OCT-A', 'Dry Store B1'),

('BAT-110', 'MAT-007', 28, CURRENT_DATE - 6, NULL, 44.00,
 'POI-011', 30, CURRENT_DATE - 6, 'SUGAR-OCT-A', 'Dry Store B2');



 INSERT INTO stock_transaction (
    transaction_id,
    material_id,
    batch_id,
    transaction_type,
    quantity,
    transaction_date,
    reference_id,
    reference_type,
    notes,
    created_by
)
VALUES
('TXN-101', 'MAT-001', 'BAT-101', 'STOCK_IN', 100, CURRENT_TIMESTAMP - INTERVAL '10 days',
 'PO-001', 'PURCHASE_ORDER', 'Rice received', 'Inventory Manager'),

('TXN-102', 'MAT-001', 'BAT-101', 'STOCK_OUT', 20, CURRENT_TIMESTAMP - INTERVAL '4 days',
 'KITCHEN-001', 'KITCHEN_USAGE', 'Rice issued to kitchen', 'Store Keeper'),

('TXN-103', 'MAT-002', 'BAT-103', 'STOCK_IN', 40, CURRENT_TIMESTAMP - INTERVAL '5 days',
 'PO-002', 'PURCHASE_ORDER', 'Milk received', 'Inventory Manager'),

('TXN-104', 'MAT-002', 'BAT-103', 'STOCK_OUT', 18, CURRENT_TIMESTAMP - INTERVAL '1 day',
 'KITCHEN-002', 'KITCHEN_USAGE', 'Milk issued for beverages', 'Store Keeper'),

('TXN-105', 'MAT-009', 'BAT-106', 'STOCK_IN', 50, CURRENT_TIMESTAMP - INTERVAL '2 days',
 'PO-003', 'PURCHASE_ORDER', 'Potatoes received', 'Inventory Manager'),

('TXN-106', 'MAT-009', 'BAT-106', 'STOCK_OUT', 8, CURRENT_TIMESTAMP - INTERVAL '1 day',
 'KITCHEN-003', 'KITCHEN_USAGE', 'Potatoes issued', 'Store Keeper'),

('TXN-107', 'MAT-011', 'BAT-108', 'STOCK_IN', 40, CURRENT_TIMESTAMP - INTERVAL '2 days',
 'PO-003', 'PURCHASE_ORDER', 'Tomatoes received', 'Inventory Manager'),

('TXN-108', 'MAT-011', 'BAT-108', 'STOCK_OUT', 7, CURRENT_TIMESTAMP - INTERVAL '1 day',
 'KITCHEN-004', 'KITCHEN_USAGE', 'Tomatoes issued', 'Store Keeper'),

('TXN-109', 'MAT-011', 'BAT-108', 'WASTAGE', 3, CURRENT_TIMESTAMP,
 'WST-001', 'WASTAGE', 'Spoiled tomatoes removed', 'Store Keeper');


 INSERT INTO stock_adjustment (
    adjustment_id,
    material_id,
    batch_id,
    system_quantity,
    actual_quantity,
    adjustment_quantity,
    reason,
    notes,
    adjusted_by
)
VALUES
(
    'ADJ-001',
    'MAT-010',
    'BAT-107',
    45,
    44,
    -1,
    'PHYSICAL_COUNT_DIFFERENCE',
    'Difference found during stock verification',
    'Inventory Manager'
),
(
    'ADJ-002',
    'MAT-007',
    'BAT-110',
    30,
    28,
    -2,
    'PACKAGING_DAMAGE',
    'Two kilograms lost because of damaged packaging',
    'Inventory Manager'
);



INSERT INTO wastage_record (
    wastage_id,
    material_id,
    batch_id,
    quantity,
    reason,
    wastage_date,
    recorded_by,
    notes
)
VALUES
(
    'WST-001',
    'MAT-011',
    'BAT-108',
    3,
    'SPOILED',
    CURRENT_TIMESTAMP,
    'Store Keeper',
    'Tomatoes spoiled before consumption'
),
(
    'WST-002',
    'MAT-015',
    'BAT-104',
    2,
    'QUALITY_REJECTED',
    CURRENT_TIMESTAMP - INTERVAL '1 day',
    'Store Keeper',
    'Curd quality found unsuitable'
);



INSERT INTO inventory_audit_session (
    audit_session_id,
    audit_date,
    audit_type,
    performed_by,
    status,
    remarks
)
VALUES
(
    'AUDS-001',
    CURRENT_TIMESTAMP - INTERVAL '7 days',
    'WEEKLY',
    'Inventory Manager',
    'COMPLETED',
    'Weekly inventory verification'
),
(
    'AUDS-002',
    CURRENT_TIMESTAMP,
    'MONTHLY',
    'Canteen Manager',
    'IN_PROGRESS',
    'Monthly physical verification'
);




INSERT INTO inventory_audit (
    audit_id,
    audit_date,
    material_id,
    recorded_quantity,
    physical_quantity,
    variance,
    auditor_name,
    remarks,
    audit_session_id
)
VALUES
(
    'AUD-001',
    CURRENT_TIMESTAMP - INTERVAL '7 days',
    'MAT-001',
    82,
    80,
    -2,
    'Inventory Manager',
    'Minor rice stock discrepancy',
    'AUDS-001'
),
(
    'AUD-002',
    CURRENT_TIMESTAMP - INTERVAL '7 days',
    'MAT-002',
    23,
    22,
    -1,
    'Inventory Manager',
    'Milk variance observed',
    'AUDS-001'
),
(
    'AUD-003',
    CURRENT_TIMESTAMP,
    'MAT-009',
    42,
    42,
    0,
    'Canteen Manager',
    'Stock matched',
    'AUDS-002'
),
(
    'AUD-004',
    CURRENT_TIMESTAMP,
    'MAT-010',
    45,
    44,
    -1,
    'Canteen Manager',
    'Adjustment required',
    'AUDS-002'
);


