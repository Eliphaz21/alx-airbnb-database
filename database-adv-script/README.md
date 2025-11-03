# 0. Write Complex Queries with Joins

## 🎯 Objective

This task focuses on mastering SQL joins by retrieving and combining data from multiple related tables within the Airbnb database schema.

---

## 🧩 Description

In this task, we explore:

- **INNER JOIN** to combine matching records between tables.
- **LEFT JOIN** to include all records from one table even if no match exists.
- **FULL OUTER JOIN** to retrieve all records from both tables, whether matched or not.

---

## 🧠 Queries Implemented

### 🔹 1. INNER JOIN

Retrieve all bookings and the users who made them.

```sql
SELECT
    b.booking_id,
    b.property_id,
    u.user_id,
    u.name AS user_name,
    u.email,
    b.start_date,
    b.end_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id;
SELECT
    p.property_id,
    p.name AS property_name,
    p.location,
    r.review_id,
    r.rating,
    r.comment
FROM properties p
LEFT JOIN reviews r ON p.property_id = r.property_id;
SELECT
    u.user_id,
    u.name AS user_name,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM users u
FULL OUTER JOIN bookings b ON u.user_id = b.user_id;
SELECT
    u.user_id,
    u.name AS user_name,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM users u
LEFT JOIN bookings b ON u.user_id = b.user_id

UNION

SELECT
    u.user_id,
    u.name AS user_name,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM users u
RIGHT JOIN bookings b ON u.user_id = b.user_id;
alx-airbnb-database/
└── database-adv-script/
    ├── joins_queries.sql
    └── README.md
```
