# Book_Store-Project--SQL-

# Bookstore Sales Analysis (SQL Project)

## 📌 Project Overview

This SQL project analyzes sales data from an online bookstore, focusing on customer purchases, book details, and revenue generation. The goal is to derive key insights from the dataset using SQL queries.

## 📂 Dataset Details

The project consists of three datasets:

- **Books.csv**: Contains book details (`Book_ID`, `Title`, `Author`, `Genre`, `Published_Year`, `Price`, `Stock`).
- **Customers.csv**: Includes customer details (`Customer_ID`, `Name`, `Email`, `Phone`, `City`, `Country`).
- **Orders.csv**: Stores order details (`Order_ID`, `Customer_ID`, `Book_ID`, `Order_Date`, `Quantity`, `Total_Amount`).

## 📊 Key Insights

- **Total Revenue Generated:** 💰 \$75,628.66
- **Top 5 Best-Selling Books (by Quantity Sold):**
  - Book ID 73: 28 copies
  - Book ID 31: 27 copies
  - Book ID 157: 24 copies
  - Book ID 273: 24 copies
  - Book ID 120: 23 copies
- **Most Popular Genre:** 📖 Mystery (504 copies sold)
- **Highest Spending Customer:** 🏆 Kim Turner (\$1,398.90 spent)
- **Yearly Sales Trend:**
  - 2022: \$2,513.36
  - 2023: \$36,339.97
  - 2024: \$36,775.33

## ⚙️ SQL Techniques Used

- Data cleaning and transformation
- Joins (INNER JOIN, LEFT JOIN) for data merging
- Aggregations (SUM, COUNT, AVG, MAX, MIN)
- Filtering and ordering (WHERE, GROUP BY, ORDER BY)
- Date functions (YEAR, MONTH extraction)
- Common Table Expressions (CTE) for complex queries and better readability
- Subqueries for nested data retrieval and filtering

## 🚀 How to Use

1. Download the dataset from the internet and clean the data.
2. Create three CSV files: `Books.csv`, `Customers.csv`, and `Orders.csv`.
3. In MySQL, create three tables corresponding to these files.
4. Import the CSV files into MySQL.
5. Run basic and advanced SQL queries to analyze the data and generate insights.

## 📜 SQL Queries Used

### Basic Queries:

1\) Retrieve all books in the "Fiction" genre

2\) Find books published after the year 1950

3\) List all customers from the Canada

4\) Show orders placed in November 2023

5\) Retrieve the total stock of books available

6\) Find the details of the most expensive book

7\) Show all customers who ordered more than 1 quantity of a book

8\) Retrieve all orders where the total amount exceeds \$20

9\) List all genres available in the Books table

10\) Find the book with the lowest stock

11\) Calculate the total revenue generated from all orders



# **Advance Queries:**



1\) Retrieve the total number of books sold for each genre

2\) Find the average price of books in the "Fantasy" genre

3\) List customers who have placed at least 2 orders

4\) Find the most frequently ordered book

5\) Show the top 3 most expensive books of 'Fantasy' Genre

6\) Retrieve the total quantity of books sold by each author

7\) List the cities where customers who spent over \$30 are located

8\) Find the customer who spent the most on orders

9\) Calculate the stock remaining after fulfilling all ordersAdvanced Queries:

## 🏆 Conclusion

This project showcases SQL skills for data analysis by providing business insights into bookstore sales. The findings can help optimize book inventory, understand customer preferences, and improve sales strategies.

---

📢 **Connect with Me:** [LinkedIn](https://www.linkedin.com/in/sundrammishra55/) | [Portfolio](https://sundrammishra.my.canva.site/) | [GitHub](https://github.com/sundram55)

