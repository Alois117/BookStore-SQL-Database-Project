# BookStore SQL Database Project

## Overview

This project simulates a real-world **BookStore** system by designing and implementing a fully functional **MySQL relational database**. It stores and manages data related to books, authors, customers, orders, shipping, and more.

The goal is to build a clean, efficient database structure with optimized data types, secure user roles, and the ability to retrieve data through meaningful SQL queries.

---

## Tools and Technologies
- **MySQL** – Database management
- **Draw.io** – Database schema design and ERD visualization
- **GitHub** – Project version control and submission

---

## Project Objective

Design a **relational MySQL database** to manage and organize bookstore operations. Key outcomes include:

- Efficient storage and retrieval of books, customers, and orders.
- Handling many-to-many and one-to-many relationships.
- User role management and data security.
- Practice writing complex SQL queries for analysis.

---

## Tables Created

| Table Name         | Description                                                  |
|--------------------|--------------------------------------------------------------|
| `book`             | All books available in the store                             |
| `author`           | List of authors                                              |
| `book_author`      | Many-to-many relationship between books and authors          |
| `book_language`    | Possible languages a book can be in                          |
| `publisher`        | List of book publishers                                      |
| `customer`         | Bookstore customers                                          |
| `address`          | Addresses (used by customers)                                |
| `customer_address` | Links customers with their addresses and address status      |
| `address_status`   | Status of the address (current, old, etc.)                   |
| `country`          | Countries of the addresses                                   |
| `cust_order`       | Orders placed by customers                                   |
| `order_line`       | Books included in each order                                 |
| `shipping_method`  | Available shipping methods                                   |
| `order_status`     | Current status of an order                                   |
| `order_history`    | Tracks status history of an order                            |

---

## Key Features

- ✅ Normalized table design
- ✅ Primary and foreign key constraints
- ✅ Many-to-many and one-to-many relationships handled
- ✅ User creation and role-based privileges
- ✅ Sample queries to retrieve business insights

---

## User & Role Management

```sql
CREATE USER 'store_admin'@'localhost' IDENTIFIED BY 'StrongPassword123';
GRANT ALL PRIVILEGES ON BookStoreDB.* TO 'store_admin'@'localhost';
FLUSH PRIVILEGES;

Sample SQL Queries
Books by a specific author

SELECT b.title, a.first_name, a.last_name
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id
WHERE a.last_name = 'Smith';
Order totals

SELECT o.order_id, SUM(ol.quantity * ol.price) AS total_value
FROM cust_order o
JOIN order_line ol ON o.order_id = ol.order_id
GROUP BY o.order_id;


Files in This Repo
bookstore_schema.sql – SQL script to create all tables

sample_queries.sql – Example SQL queries to test the database

bookstore_erd.png – Visual ERD of the database schema

README.md – Project description and setup instructions


Contact
Project by: The Pioneers Group
For any questions, feel free to reach out via GitHub Issues or email.
