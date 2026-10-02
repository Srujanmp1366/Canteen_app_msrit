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


