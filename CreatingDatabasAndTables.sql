CREATE DATABASE BookStore;

USE BookStore;


CREATE TABLE book (
  bookID INT PRIMARY KEY AUTO_INCREMENT,
  Title VARCHAR(255),
  Genre VARCHAR(255),
  Edition VARCHAR(255)
);


CREATE TABLE author (
  authorID INT PRIMARY KEY AUTO_INCREMENT,
  firstName VARCHAR(255),
  Genre VARCHAR(255),
  Nationality VARCHAR(255),
  bookID INT,
  FOREIGN KEY (bookID) REFERENCES book (bookID)
);
CREATE TABLE book_author (
  bookID INT,
  authorID INT,
  FOREIGN KEY (bookID) REFERENCES book (bookID),
  FOREIGN KEY (authorID) REFERENCES author (authorID)
);

CREATE TABLE publisher (
  publisherID INT PRIMARY KEY AUTO_INCREMENT ,
  FName VARCHAR(255),
  Address VARCHAR(255),
  email VARCHAR(255),
  bookID INT,
  FOREIGN KEY ( bookID) REFERENCES book ( bookID)
);

CREATE TABLE customer (
  customerID INT PRIMARY KEY AUTO_INCREMENT ,
  Cus_Names VARCHAR(255),
  Cus_email VARCHAR(255),
  Phone VARCHAR(255),
  created_at VARCHAR(255),
  default_address_ID VARCHAR(255)
);

CREATE TABLE book_language (
  book_languageID INT PRIMARY KEY AUTO_INCREMENT,
  Field VARCHAR(255),
  bookID INT,
  FOREIGN KEY (bookID) REFERENCES book (bookID)
);
CREATE TABLE address (
  addressID INT PRIMARY KEY AUTO_INCREMENT,
  Country VARCHAR(255),
  Province VARCHAR(255),
  City  VARCHAR(255),
  Phone_code VARCHAR(255)
);

CREATE TABLE shipping_method (
  shipping_methodID INT PRIMARY KEY AUTO_INCREMENT,
  cost INT,
  delivery_time DATETIME,
  carrier VARCHAR(255),
  tracking_supported VARCHAR(255)
 
);

CREATE TABLE order_line (
  order_lineID INT PRIMARY KEY AUTO_INCREMENT,
  cust_orderID  INT,
  bookID INT,
  Quantity INT,
  Unit_price VARCHAR(255),
  Discount VARCHAR(255),
  Sub_total VARCHAR(255)
);

CREATE TABLE address_status (
  address_statusID INT PRIMARY KEY AUTO_INCREMENT,
  Status_name VARCHAR(255),
  description TEXT
);

CREATE TABLE customer_address (
  customer_addressID INT PRIMARY KEY AUTO_INCREMENT,
  customerID INT,
  addressID  INT,
  created_at DATETIME,
  address_statusID INT,
  FOREIGN KEY (customerID) REFERENCES customer (customerID),
  FOREIGN KEY (addressID) REFERENCES address (addressID),
  FOREIGN KEY (address_statusID) REFERENCES address_status (address_statusID)
  
);

CREATE TABLE cust_order (
   cust_orderID INT PRIMARY KEY AUTO_INCREMENT,
   customerID INT,
   shipping_methodID INT,
   customer_addressID INT,
   Total_amount INT,
   order_status VARCHAR(255),
   Payment_status VARCHAR(255),
   Tracking_number VARCHAR(255),
   FOREIGN KEY (customerID) REFERENCES customer (customerID),
   FOREIGN KEY (shipping_methodID) REFERENCES shipping_method (shipping_methodID),
   FOREIGN KEY (customer_addressID) REFERENCES customer_address (customer_addressID)
);


CREATE TABLE country (
  countryID INT PRIMARY KEY AUTO_INCREMENT,
  Name  VARCHAR(255),
  Code  VARCHAR(255),
  Currency VARCHAR(255),
  Phone_code  VARCHAR(255),
  publisherID INT,
  customerID INT,
  FOREIGN KEY (customerID) REFERENCES customer (customerID),
  FOREIGN KEY (publisherID) REFERENCES publisher (publisherID)
);


CREATE TABLE order_history (
  order_historyID INT PRIMARY KEY AUTO_INCREMENT,
  customerID  INT,
  order_date DATETIME,
  order_status VARCHAR(255),
  total_amount VARCHAR(255),
  delivery_date DATETIME,
  tracking_number  VARCHAR(255),
  customer_addressID  INT,
  FOREIGN KEY (customerID) REFERENCES customer (customerID),
  FOREIGN KEY (customer_addressID) REFERENCES customer_address (customer_addressID)
);

CREATE TABLE order_status (
  order_statusID INT PRIMARY KEY AUTO_INCREMENT,
  order_lineID INT,
  status_name VARCHAR(255),
  description TEXT,
  FOREIGN KEY (order_lineID) REFERENCES order_line (order_lineID)
);

