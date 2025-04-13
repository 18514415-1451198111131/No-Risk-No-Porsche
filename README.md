# BookStore Database Project

Welcome to the **Bookstore Database System**! This project simulates a real-world relational database environment, where you step into the role of a **Database Administrator (DBA)** tasked with designing, creating, and managing a MySQL database for a bookstore.

## Project Overview

We have designed and implemented a MySQL database system to efficiently store and manage the bookstore’s operational data. This includes tables for books, authors, customers, orders, shipping details, and more.

This project is broken into three SQL script files accompanied by the ERD diagrams and an exported database:

1. ** 'CreatingDatabasAndTables.sql' ** – Creates the 'BookStore` database and all necessary tables.
2. ** 'InsertingIntoDatabse.sql' ** – Inserts sample data to test the functionality of the database.
3. ** 'RolesAndAdminUsers.sql' ** – Creates users, defines roles, and grants privileges.
4. ** 'BookStore database - ERD.drawio' ** - Shows the relationship between the tables in a more graphic manner
5. ** 'Bookstore.sql' - Exported SQL file of demo data

---

## File Descriptions

### 'CreatingDatabasAndTables.sql'
- Creates the `bookstore` database.
- Defines all major tables:
  1. book: A list of all books available in the store.
  2. book_author: A table to manage the many-to-many relationship between books and authors.
  3. author: A list of all authors.
  4. book_language: A list of the possible languages of books.
  5. publisher: A list of publishers for books.
  6. Customer: A list of the bookstore's customers.
  7. customer_address: A list of addresses for customers. Each customer can have multiple addresses.
  8. address_status: A list of statuses for an address (e.g., current, old).
  9. address: A list of all addresses in the system.
  10. country: A list of countries where the addresses are located.
  11. cust_order: A list of orders placed by customers.
  12. order_line: A list of books that are part of each order.
  13. shipping_method: A list of possible shipping methods for an order.
  14.order_history: A record of the history of an order (e.g., ordered, cancelled, delivered).
  15.order_status: A list of possible statuses for an order (e.g., pending, shipped, delivered).
  - Includes all primary and foreign key relationships.

### 'InsertingIntoDatabse.sql'
- Populates the tables with sample data for testing.
- Demonstrates realistic entries such as:
  - Multiple authors and books
  - Customer profiles and addresses
  - Orders with associated items and shipping statuses etc

###  'RolesAndAdminUsers.sql'
- Creates MySQL users like:
  - global_admin – Full access
  - bookstore_admin – Limited to viewing and updating orders
  - table_editor – Can manage books and stock
- Assigns privileges appropriately using 'GRANT'.

---

## 🚀 Getting Started

### Prerequisites
- MySQL Server installed and running
- A MySQL client like MySQL Workbench or CLI
