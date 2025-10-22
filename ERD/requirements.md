I can't directly generate downloadable files here, but I can provide you with the text content for two files you need. You can copy them and save locally on your computer:

---

**1. ER Diagram Description (requirements.md)**
Filename: `requirements.md`

```
# Airbnb Database ERD

This document describes the Entity-Relationship Diagram (ERD) for the Airbnb Clone Project database.  
It includes all key entities, their attributes, and the relationships between them.

## Entities and Attributes

### 1. User
- **user_id** (PK, UUID, Indexed)  
- **first_name** (VARCHAR, NOT NULL)  
- **last_name** (VARCHAR, NOT NULL)  
- **email** (VARCHAR, UNIQUE, NOT NULL)  
- **password_hash** (VARCHAR, NOT NULL)  
- **phone_number** (VARCHAR, NULL)  
- **role** (ENUM: guest, host, admin, NOT NULL)  
- **created_at** (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)  

### 2. Property
- **property_id** (PK, UUID, Indexed)  
- **host_id** (FK → User.user_id)  
- **name** (VARCHAR, NOT NULL)  
- **description** (TEXT, NOT NULL)  
- **location** (VARCHAR, NOT NULL)  
- **pricepernight** (DECIMAL, NOT NULL)  
- **created_at** (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)  
- **updated_at** (TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP)  

### 3. Booking
- **booking_id** (PK, UUID, Indexed)  
- **property_id** (FK → Property.property_id)  
- **user_id** (FK → User.user_id)  
- **start_date** (DATE, NOT NULL)  
- **end_date** (DATE, NOT NULL)  
- **total_price** (DECIMAL, NOT NULL)  
- **status** (ENUM: pending, confirmed, canceled, NOT NULL)  
- **created_at** (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)  

### 4. Payment
- **payment_id** (PK, UUID, Indexed)  
- **booking_id** (FK → Booking.booking_id)  
- **amount** (DECIMAL, NOT NULL)  
- **payment_date** (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)  
- **payment_method** (ENUM: credit_card, paypal, stripe, NOT NULL)  

### 5. Review
- **review_id** (PK, UUID, Indexed)  
- **property_id** (FK → Property.property_id)  
- **user_id** (FK → User.user_id)  
- **rating** (INTEGER, 1–5, NOT NULL)  
- **comment** (TEXT, NOT NULL)  
- **created_at** (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)  

### 6. Message
- **message_id** (PK, UUID, Indexed)  
- **sender_id** (FK → User.user_id)  
- **recipient_id** (FK → User.user_id)  
- **message_body** (TEXT, NOT NULL)  
- **sent_at** (TIMESTAMP, DEFAULT CURRENT_TIMESTAMP)  

## Relationships

- **User (host) 1 → M Property**  
- **User (guest) 1 → M Booking**  
- **Property 1 → M Booking**  
- **Booking 1 → M Payment**  
- **User 1 → M Review**  
- **Property 1 → M Review**  
- **User 1 → M Message (sent)**  
- **User 1 → M Message (received)**  

This ERD ensures proper foreign key constraints, indexed primary keys, and normalized relationships for data integrity.
```