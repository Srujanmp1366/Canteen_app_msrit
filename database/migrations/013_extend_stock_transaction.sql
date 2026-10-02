ALTER TABLE stock_transaction
DROP CONSTRAINT chk_transaction_type;

ALTER TABLE stock_transaction
ADD CONSTRAINT chk_transaction_type
CHECK (
    transaction_type IN (
        'STOCK_IN',
        'STOCK_OUT',
        'ADJUSTMENT',
        'ADJUSTMENT_IN',
        'ADJUSTMENT_OUT',
        'TRANSFER',
        'WASTAGE',
        'RETURN_TO_SUPPLIER'
    )
);
