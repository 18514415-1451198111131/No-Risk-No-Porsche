USE BookStore;

-- 1. Book
INSERT INTO book (Title, Genre, Edition) VALUES 
('The Great Adventure', 'Fiction', '1st Edition'),
('Science of Space', 'Science', '2nd Edition');

-- 2. Author
INSERT INTO author (firstName, Genre, Nationality, bookID) VALUES 
('Alice', 'Fiction', 'American', 1),
('Bob', 'Science', 'British', 2);

-- 3. Book Author (linking table)
INSERT INTO book_author (bookID, authorID) VALUES 
(1, 1),
(2, 2);

-- 4. Publisher
INSERT INTO publisher (FName, Address, email, bookID) VALUES 
('Pearson', '123 Book Lane', 'contact@pearson.com', 1),
('Penguin', '456 Novel Ave', 'info@penguin.com', 2);

-- 5. Customer
INSERT INTO customer (Cus_Names, Cus_email, Phone, created_at, default_address_ID) VALUES 
('John Doe', 'john@example.com', '1234567890', '2025-04-12T10:00:00', '1'),
('Jane Smith', 'jane@example.com', '0987654321', '2025-04-12T12:00:00', '2');

-- 6. Book Language
INSERT INTO book_language (Field, bookID) VALUES 
('English', 1),
('French', 2);

-- 7. Address
INSERT INTO address (Country, Province, City, Phone_code) VALUES 
('USA', 'California', 'Los Angeles', '+1'),
('UK', 'England', 'London', '+44');

-- 8. Shipping Method
INSERT INTO shipping_method (cost, delivery_time, carrier, tracking_supported) VALUES 
(15, '2025-04-15T14:00:00', 'DHL', 'Yes'),
(10, '2025-04-16T16:30:00', 'UPS', 'No');

-- 9. Address Status
INSERT INTO address_status (Status_name, description) VALUES 
('Active', 'Current shipping address'),
('Inactive', 'Previously used address');

-- 10. Customer Address
INSERT INTO customer_address (customerID, addressID, created_at, address_statusID) VALUES 
(1, 1, '2025-04-12T10:00:00', 1),
(2, 2, '2025-04-12T12:00:00', 2);

-- 11. Cust Order
INSERT INTO cust_order (customerID, shipping_methodID, customer_addressID, Total_amount, order_status, Payment_status, Tracking_number) VALUES 
(1, 1, 1, 200, 'delivered', 'paid', 'TRACK123'),
(2, 2, 2, 150, 'shipped', 'pending', 'TRACK456');

-- 12. Order Line
INSERT INTO order_line (cust_orderID, bookID, Quantity, Unit_price, Discount, Sub_total) VALUES 
(1, 1, 2, '100', '0', '200'),
(2, 2, 1, '150', '0', '150');

-- 13. Country
INSERT INTO country (Name, Code, Currency, Phone_code, publisherID, customerID) VALUES 
('USA', 'US', 'USD', '+1', 1, 1),
('UK', 'GB', 'GBP', '+44', 2, 2);

-- 14. Order History
INSERT INTO order_history (customerID, order_date, order_status, total_amount, delivery_date, tracking_number, customer_addressID) VALUES 
(1, '2025-04-10T11:45:00', 'delivered', '200', '2025-04-18T10:00:00', 'TRACK123', 1),
(2, '2025-04-11T13:15:00', 'shipped', '150', '2025-04-19T17:00:00', 'TRACK456', 2);

-- 15. Order Status
INSERT INTO order_status (order_lineID, status_name, description) VALUES 
(1, 'Delivered', 'Order was delivered successfully'),
(2, 'In Transit', 'Order is on the way');
