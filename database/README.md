# Canteen Inventory Database

PostgreSQL database schema for the inventory module.

## Database

Database name:

canteen_db

## Tables

### raw_material

Stores raw materials and current stock information.

### stock_batch

Stores individual stock batches and expiry information.

### stock_transaction

Stores inventory movement history.

## Migrations

Run migrations in this order:

1. 001_create_raw_material.sql
2. 002_create_stock_batch.sql
3. 003_create_stock_transaction.sql
4. 004_create_inventory_indexes.sql

## Seed data

Optional sample data:

seeds/001_inventory_seed.sql

## Design decisions

InventoryAlert is not included.

A separate Inventory table is not used.

Raw material stock is represented using:

- raw_material.current_quantity
- stock_batch.quantity

Stock transactions provide inventory movement history.

The Flutter application must not connect directly to PostgreSQL.

Future architecture:

Flutter -> Backend API -> PostgreSQL