-- CREATING USERS

-- GLOBAL PRIVILEGES
CREATE USER 'john_doe'@'%' IDENTIFIED BY 'Password123';
GRANT ALL PRIVILEGES ON *.* TO 'john_doe'@'%' WITH GRANT OPTION;


--  ADMIN WITH DATABASE PRIVILEGES
CREATE USER 'jane_doe'@'%' IDENTIFIED BY 'Password456';
GRANT ALL PRIVILEGES ON BookStore.* TO 'jane_doe'@'%' WITH GRANT OPTION;


-- ADMIN WITH TABLE PRIVILEGES
CREATE USER 'baby_jake_doe'@'%' IDENTIFIED BY 'Pasword789';
GRANT SELECT, INSERT, UPDATE, DELETE ON BookStore.book TO 'baby_jake_doe'@'%';
GRANT SELECT, INSERT, UPDATE ON BookStore.author TO 'baby_jake_doe'@'%';



-- ROLES

-- Global Admin Role
CREATE ROLE 'global_admin';

-- Database Admin Role (BookStore only)
CREATE ROLE 'bookstore_admin';

-- Table-level Admin Role (for book and author)
CREATE ROLE 'table_editor';


-- Global Admin can do anything, anywhere
GRANT ALL PRIVILEGES ON *.* TO 'global_admin' WITH GRANT OPTION;

-- BookStore Admin has full control over BookStore database
GRANT ALL PRIVILEGES ON BookStore.* TO 'bookstore_admin' WITH GRANT OPTION;

-- Table Editor can manage specific tables
GRANT SELECT, INSERT, UPDATE, DELETE ON BookStore.book TO 'table_editor';
GRANT SELECT, INSERT, UPDATE ON BookStore.author TO 'table_editor';


-- Assign global admin to John Doe
GRANT 'global_admin' TO 'john_doe'@'%';
SET DEFAULT ROLE 'global_admin' TO 'john_doe'@'%';

-- Assign BookStore admin to Jane Doe
GRANT 'bookstore_admin' TO 'jane_doe'@'%';
SET DEFAULT ROLE 'bookstore_admin' TO 'jane_doe'@'%';

-- Assign table-level editor to Baby Jake Doe
GRANT 'table_editor' TO 'baby_jake_doe'@'%';
SET DEFAULT ROLE 'table_editor' TO 'baby_jake_doe'@'%';


FLUSH PRIVILEGES;