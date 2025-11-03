-- Task 0: Write Complex Queries with Joins
-- Project: ALX Airbnb Database
-- 1️⃣ INNER JOIN
-- Retrieve all bookings and their respective users
SELECT b.booking_id,
    b.property_id,
    u.user_id,
    u.name AS user_name,
    u.email,
    b.start_date,
    b.end_date
FROM bookings b
    INNER JOIN users u ON b.user_id = u.user_id;
-- 2️⃣ LEFT JOIN
-- Retrieve all properties and their reviews, including those without reviews
SELECT p.property_id,
    p.name AS property_name,
    p.location,
    r.review_id,
    r.rating,
    r.comment
FROM properties p
    LEFT JOIN reviews r ON p.property_id = r.property_id;
-- 3️⃣ FULL OUTER JOIN
-- Retrieve all users and all bookings, even if the user has no booking
-- or if a booking is not linked to a user
-- ⚠️ For MySQL users: use UNION since FULL OUTER JOIN isn’t supported
SELECT u.user_id,
    u.name AS user_name,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM users u
    LEFT JOIN bookings b ON u.user_id = b.user_id
UNION
SELECT u.user_id,
    u.name AS user_name,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM users u
    RIGHT JOIN bookings b ON u.user_id = b.user_id;