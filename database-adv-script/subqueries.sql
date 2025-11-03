-- Task 1: Practice Subqueries
-- Project: ALX Airbnb Database
-- 1️⃣ Non-Correlated Subquery
-- Find all properties where the average rating is greater than 4.0
SELECT p.property_id,
    p.name AS property_name,
    p.location
FROM properties p
WHERE p.property_id IN (
        SELECT property_id
        FROM reviews
        GROUP BY property_id
        HAVING AVG(rating) > 4.0
    )
ORDER BY p.property_id;
-- 2️⃣ Correlated Subquery
-- Find all users who have made more than 3 bookings
SELECT u.user_id,
    u.name AS user_name,
    u.email
FROM users u
WHERE (
        SELECT COUNT(*)
        FROM bookings b
        WHERE b.user_id = u.user_id
    ) > 3
ORDER BY u.user_id;