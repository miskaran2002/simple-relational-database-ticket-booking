# Football Ticket Booking System - Database Design & SQL Queries

## Overview

This project is a database design and SQL assignment for a Football Ticket Booking System. The system manages football fans, tournament matches, and ticket booking transactions.

The project demonstrates:

* Database schema design
* Entity Relationship Diagram (ERD)
* Primary Key and Foreign Key relationships
* Data integrity constraints
* SQL queries using filtering, joins, subqueries, aggregation, and pagination

---

## Database Tables

### 1. Users

Stores information about football fans and ticket managers.

Fields:

* user_id (Primary Key)
* full_name
* email
* role
* phone_number

### 2. Matches

Stores information about football matches and ticket availability.

Fields:

* match_id (Primary Key)
* fixture
* tournament_category
* base_ticket_price
* match_status

### 3. Bookings

Stores ticket booking transactions.

Fields:

* booking_id (Primary Key)
* user_id (Foreign Key)
* match_id (Foreign Key)
* seat_number
* payment_status
* total_cost

---

## Entity Relationship Diagram (ERD)

Relationships:

* One User can make many Bookings.
* One Match can have many Bookings.
* Each Booking belongs to exactly one User and one Match.

ERD Link:
[https://drive.google.com/file/d/1Bgzt7tn7tH-S7b3cr1axl39woNg7OLBP/view?usp=sharing]

---

## SQL Features Implemented

### Query 1

Retrieve available Champions League matches.

### Query 2

Search users using LIKE and ILIKE.

### Query 3

Handle NULL payment status using COALESCE.

### Query 4

Retrieve booking details using INNER JOIN.

### Query 5

Display all users including those without bookings using LEFT JOIN.

### Query 6

Find bookings with total cost greater than the average booking cost using a subquery.

### Query 7

Retrieve expensive matches using ORDER BY, OFFSET, and LIMIT.

---

## Technologies Used

* PostgreSQL
* SQL
* Draw.io / Lucidchart

---

## Repository Structure

```text
Football-Ticket-Booking-System/
│
├── README.md
├── schema.sql
├── sample_data.sql
└── queries.sql
```

---

## Author

Md Raihan Uddin

Department of Computer Science and Engineering

University of Barisal
