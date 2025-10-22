-- Airbnb Database Sample Data Seeding
-- Insert sample Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
(gen_random_uuid(), 'Alice', 'Johnson', 'alice@example.com', 'hashed_password_1', '1234567890', 'guest', CURRENT_TIMESTAMP),
(gen_random_uuid(), 'Bob', 'Smith', 'bob@example.com', 'hashed_password_2', '0987654321', 'host', CURRENT_TIMESTAMP),
(gen_random_uuid(), 'Charlie', 'Brown', 'charlie@example.com', 'hashed_password_3', NULL, 'admin', CURRENT_TIMESTAMP);

-- Insert sample Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
(gen_random_uuid(), (SELECT user_id FROM User WHERE email = 'bob@example.com'), 'Ocean View Apartment', 'A beautiful seaside apartment.', 'Addis Ababa', 75.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(gen_random_uuid(), (SELECT user_id FROM User WHERE email = 'bob@example.com'), 'Mountain Cabin', 'Cozy cabin near the mountains.', 'Bishoftu', 50.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert sample Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
(gen_random_uuid(), (SELECT property_id FROM Property LIMIT 1), (SELECT user_id FROM User WHERE email = 'alice@example.com'), '2025-11-01', '2025-11-05', 300.00, 'confirmed', CURRENT_TIMESTAMP),
(gen_random_uuid(), (SELECT property_id FROM Property OFFSET 1 LIMIT 1), (SELECT user_id FROM User WHERE email = 'alice@example.com'), '2025-12-10', '2025-12-12', 100.00, 'pending', CURRENT_TIMESTAMP);

-- Insert sample Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
(gen_random_uuid(), (SELECT booking_id FROM Booking LIMIT 1), 300.00, CURRENT_TIMESTAMP, 'credit_card'),
(gen_random_uuid(), (SELECT booking_id FROM Booking OFFSET 1 LIMIT 1), 100.00, CURRENT_TIMESTAMP, 'paypal');

-- Insert sample Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
(gen_random_uuid(), (SELECT property_id FROM Property LIMIT 1), (SELECT user_id FROM User WHERE email = 'alice@example.com'), 5, 'Amazing stay with great views!', CURRENT_TIMESTAMP),
(gen_random_uuid(), (SELECT property_id FROM Property OFFSET 1 LIMIT 1), (SELECT user_id FROM User WHERE email = 'alice@example.com'), 4, 'Comfortable and cozy!', CURRENT_TIMESTAMP);

-- Insert sample Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
(gen_random_uuid(), (SELECT user_id FROM User WHERE email = 'alice@example.com'), (SELECT user_id FROM User WHERE email = 'bob@example.com'), 'Is the Ocean View Apartment available next week?', CURRENT_TIMESTAMP),
(gen_random_uuid(), (SELECT user_id FROM User WHERE email = 'bob@example.com'), (SELECT user_id FROM User WHERE email = 'alice@example.com'), 'Yes, it is available!', CURRENT_TIMESTAMP);
