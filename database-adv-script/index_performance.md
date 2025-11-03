# Implement Indexes for Optimization

## 🎯 Objective

Improve query performance by identifying high-usage columns and creating appropriate indexes on the Airbnb database.

---

## 🔍 Step 1: Identify High-Usage Columns

### Observations:

- `users.user_id` → used frequently in JOINs and WHERE clauses.
- `bookings.user_id`, `bookings.property_id` → common in filtering and joins.
- `properties.property_id`, `properties.city` → used in ORDER BY and filtering queries.

---

## 🧩 Step 2: Create Indexes

```sql
CREATE INDEX idx_users_user_id ON users(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_properties_property_id ON properties(property_id);
CREATE INDEX idx_properties_city ON properties(city);

```
