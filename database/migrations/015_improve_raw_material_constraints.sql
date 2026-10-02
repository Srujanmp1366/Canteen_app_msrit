ALTER TABLE raw_material
ADD CONSTRAINT chk_raw_material_unit
CHECK (
    unit IN (
        'KG',
        'GRAM',
        'LITRE',
        'ML',
        'PIECE',
        'PACKET',
        'BOX'
    )
);