create database online_bookstore;

CREATE TABLE Books (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    Genre VARCHAR(100),
    Published_Year INT,
    Price DECIMAL(10,2),
    Stock INT
);

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Phone int,
    City VARCHAR(100),
    Country VARCHAR(100)
);

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Book_ID INT,
    Order_Date DATE,
    Quantity INT,
    Total_Amount DECIMAL(10,2),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);


DESCRIBE Books;
DESCRIBE Customers;
DESCRIBE Orders;

select * from orders;
select * from customers;
select * from books;

-- 👉 Basic Queries

-- 1) Retrieve all books in the "Fiction" genre
SELECT 
    Book_ID, Title
FROM
    books
WHERE
    genre = 'fiction';

-- 2) Find books published after the year 1950
SELECT 
    book_id, title
FROM
    books
WHERE
    Published_Year > 1950;

-- 3) List all customers from the Canada
SELECT 
    name
FROM
    customers
WHERE
    Country = 'canada';

-- 4) Show orders placed in November 2023
SELECT 
    *
FROM
    orders
WHERE
    MONTH(order_date) = 11
        AND YEAR(order_date) = 2023;
-- OR
SELECT 
    *
FROM
    orders
WHERE
    order_date BETWEEN '2023-11-01' AND '2023-11-30';

-- 5) Retrieve the total stock of books available
SELECT 
    SUM(Stock) total_stocks
FROM
    books;

-- 6) Find the details of the most expensive book
SELECT 
    *
FROM
    books
WHERE
    price = (SELECT 
            MAX(price)
        FROM
            books);
-- OR
SELECT 
    *
FROM
    books
ORDER BY price DESC
LIMIT 1;

-- 7) Show all customers who ordered more than 1 quantity of a book
SELECT DISTINCT
    name
FROM
    customers c
        JOIN
    orders o USING (customer_id)
WHERE
    Quantity > 1;

-- 8) Retrieve all orders where the total amount exceeds $20
SELECT 
    order_id
FROM
    orders
WHERE
    Total_Amount > 20;

-- 9) List all genres available in the Books table
SELECT DISTINCT
    genre
FROM
    books;

-- 10) Find the book with the lowest stock
SELECT 
    book_id, title
FROM
    books
WHERE
    stock = (SELECT 
            MIN(stock)
        FROM
            books);

-- 11) Calculate the total revenue generated from all orders
SELECT 
    SUM(Total_Amount) total_revenue
FROM
    orders;

-- 👉 Advance Queries

-- 1) Retrieve the total number of books sold for each genre
SELECT 
    b.Genre, SUM(o.Quantity) total_books_sold
FROM
    books b
        JOIN
    orders o USING (book_id)
GROUP BY Genre;

-- 2) Find the average price of books in the "Fantasy" genre
SELECT 
    AVG(price) avg_price
FROM
    books
WHERE
    Genre = 'fantasy';

-- 3) List customers who have placed at least 2 orders
SELECT 
    c.Customer_ID, c.name, COUNT(o.Order_ID) order_count
FROM
    customers c
        JOIN
    orders o USING (customer_id)
GROUP BY c.Customer_ID , c.name
HAVING COUNT(o.Order_ID) >= 2;

-- 4) Find the most frequently ordered book
SELECT 
    o.Book_ID, b.Title, COUNT(o.Order_ID) order_count
FROM
    books b
        JOIN
    orders o USING (book_id)
GROUP BY o.Book_ID , b.Title
ORDER BY order_count DESC
LIMIT 7;

-- 5) Show the top 3 most expensive books of 'Fantasy' Genre
with cte as
(select * from books where Genre="fantasy")
select * from cte order by price desc limit 3;

-- 6) Retrieve the total quantity of books sold by each author
SELECT 
    Author, SUM(o.Quantity) total_quantity_sold
FROM
    books b
        JOIN
    orders o USING (book_id)
GROUP BY Author;

-- 7) List the cities where customers who spent over $30 are located
SELECT DISTINCT
    c.city, o.Total_Amount Total_Amount
FROM
    customers c
        JOIN
    orders o USING (customer_id)
WHERE
    Total_Amount > 30;

-- 8) Find the customer who spent the most on orders
SELECT 
    c.Customer_ID, c.Name, SUM(o.Total_Amount) Total_Amount
FROM
    customers c
        JOIN
    orders o USING (customer_id)
GROUP BY c.name , c.Customer_ID
ORDER BY Total_Amount DESC
LIMIT 1;

-- 9) Calculate the stock remaining after fulfilling all orders
SELECT 
    b.Book_ID,
    b.title,
    b.Stock,
    IFNULL(SUM(o.quantity), 0) order_quantity,
    b.stock - IFNULL(SUM(o.quantity), 0) remaining_stock
FROM
    books b
        LEFT JOIN
    orders o USING (book_id)
GROUP BY b.Book_id;





