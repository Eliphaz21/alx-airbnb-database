# Airbnb Database Seeding

## Overview
This file populates the Airbnb database with realistic sample data to simulate user activity, property listings, bookings, payments, and communication.

## Contents
- **User**: Sample guests, hosts, and admin users.
- **Property**: Listings with descriptions and pricing.
- **Booking**: User bookings for specific properties.
- **Payment**: Payments linked to bookings.
- **Review**: User feedback on properties.
- **Message**: Communication between users.

## Usage
Run the script in your SQL environment after creating the database schema:

```sql
\i path/to/seed.sql
```

Ensure that your tables and constraints are created before running this script.

## Notes
- This sample data ensures relational consistency (valid foreign keys).
- Adjust the data as needed for further testing or scaling.
