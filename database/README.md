# Canteen Inventory Database

PostgreSQL schema for the full inventory and procurement module.

## Database

Database name: `canteen_db`

## Core tables

- `raw_material` — material catalogue and current stock total
- `stock_batch` — batch-level quantity, expiry, storage and purchase linkage
- `stock_transaction` — immutable-style stock movement history
- `supplier` — supplier master data
- `supplier_material` — supplier/material price, MOQ and lead-time mapping
- `purchase_order` — procurement order header
- `purchase_order_item` — materials ordered within each PO
- `stock_adjustment` — physical-count corrections
- `wastage_record` — spoiled, rejected or wasted stock
- `inventory_audit_session` — grouped physical audit sessions
- `inventory_audit` — material-level audit results

## Views

- `inventory_stock_summary`
- `low_stock_materials`
- `expiring_stock_batches`
- `expired_stock_batches`
- `purchase_order_summary`
- `inventory_quantity_mismatch`

## Migration order

Run every file in `database/migrations` in numeric order, currently `001` through `022`.

Migration `022_harden_inventory_integrity.sql` adds final consistency constraints and automatically synchronizes `raw_material.current_quantity` with the sum of its stock batches.

## Seed data

### Full database

For a fresh complete demo database, run only:

`database/seeds/002_full_inventory_seed.sql`

It is self-contained and includes all materials, suppliers, supplier mappings, purchase orders, purchase-order items, batches, transactions, wastage, adjustments and audits.

### Legacy small seed

`database/seeds/001_inventory_seed.sql` is retained only as the original minimal development seed.

Do **not** run both seed files on the same clean database.

## Fresh setup

1. Create PostgreSQL database `canteen_db`.
2. Run migrations `001` through `022` in numeric order.
3. Run `database/seeds/002_full_inventory_seed.sql`.
4. Verify `SELECT * FROM inventory_quantity_mismatch;` returns no rows.

## Architecture

Frontend -> Backend API -> PostgreSQL

The frontend must not connect directly to PostgreSQL.

## Stock consistency

`stock_batch.quantity` is the batch-level source of truth. PostgreSQL triggers keep `raw_material.current_quantity` synchronized automatically.

Stock movements should still be performed by the backend inside database transactions so the batch change, transaction history and related wastage/adjustment records succeed or fail together.
