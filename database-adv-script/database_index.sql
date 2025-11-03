-- Task 3: Implement Indexes for Optimization
-- Project: ALX Airbnb Database
-- 🔍 Creating indexes on high-usage columns
-- These columns are often used in WHERE, JOIN, or ORDER BY clauses
-- 1️⃣ Index on Users table for user_id (used in JOIN and WHERE)
CREATE INDEX idx_users_user_id ON users(user_id);
-- 2️⃣ Index on Bookings table for property_id and user_id (frequently joined)
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
-- 3️⃣ Index on Properties table for property_id and city (used for filtering and sorting)
CREATE INDEX idx_properties_property_id ON properties(property_id);
CREATE INDEX idx_properties_city ON properties(city);
-- 🧠 Check performance before and after using EXPLAIN or ANALYZE
-- Example: Before creating indexes
EXPLAIN
SELECT *
FROM bookings
WHERE user_id = 5;
-- Example: After creating indexes
EXPLAIN
SELECT *
FROM bookings
WHERE user_id = 5;
-- You should see a reduced cost and improved query plan after adding indexes.