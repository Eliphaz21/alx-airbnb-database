# Airbnb Database Schema

## Description
This SQL script defines the Airbnb-like relational database schema for users, properties, bookings, payments, reviews, and messages. It ensures data integrity, referential consistency, and performance optimization through constraints and indexing.

## Features
- UUID primary keys for all tables
- Foreign key constraints with cascading deletes
- ENUM-like checks for roles, status, and payment methods
- Indexes on frequently queried fields (email, foreign keys)
- Designed up to **Third Normal Form (3NF)** for minimal redundancy

## Usage
Run the script in PostgreSQL:
```bash
psql -U username -d airbnb_db -f schema.sql
```

## Author
**Eliphaz**
