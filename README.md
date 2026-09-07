# Retail Sales Analysis — SQL Portfolio Project

## 📊 Project Overview

This project is a **Retail Sales Analysis** project built to demonstrate practical SQL skills for a Data Analyst / Business Intelligence Analyst role.

The project analyzes retail sales data to identify business performance, sales trends, customer behavior, product performance, regional performance, and salesperson performance.

The analysis was performed using **Microsoft SQL Server and SQL Server Management Studio (SSMS)**.

---

## 🎯 Business Objective

The main objective of this project is to use SQL to transform raw sales data into meaningful business insights that can support data-driven decision-making.

The project focuses on answering questions such as:

* What are the company's total sales and profit?
* Which region generates the highest sales?
* Which products generate the highest sales and profit?
* Which product categories have the highest profit margin?
* Which customers generate the most revenue?
* Which salesperson performs best?
* Which months generate the highest sales?
* How many orders and products are sold?

---

## 🗂️ Dataset

The dataset contains **1,000 retail sales records**.

### Main Columns

| Column           | Description                           |
| ---------------- | ------------------------------------- |
| Order_ID         | Unique order identifier               |
| Order_Date       | Date of the order                     |
| Customer_ID      | Customer identifier                   |
| Customer_Name    | Customer name                         |
| Region           | Sales region                          |
| City             | Customer city                         |
| Product_Category | Product category                      |
| Product          | Product name                          |
| Quantity         | Quantity sold                         |
| Unit_Price       | Price per unit                        |
| Discount         | Discount applied                      |
| Sales            | Total sales amount                    |
| Cost             | Product cost                          |
| Profit           | Profit generated                      |
| Payment_Method   | Payment method                        |
| Salesperson      | Salesperson responsible for the order |

---

## 🛠️ Tools & Technologies

* **Microsoft SQL Server**
* **SQL Server Management Studio (SSMS)**
* **SQL**
* **Microsoft Excel** — used as the original data source and for supporting analysis

---

## 🗄️ Database Structure

### Database

```text
RetailSalesDB
```

### Table

```text
dbo.Sales_Data_Clean$
```

The cleaned dataset contains **1,000 records**.

---

## 🔍 SQL Analysis

The project includes several areas of SQL analysis.

### 1. Data Exploration

* View sample records
* Count total records
* Inspect table structure
* Check column names and data types

### 2. Data Quality

* Check duplicate Order IDs
* Check missing Customer IDs
* Check missing Product values

### 3. Business KPIs

Calculated key business metrics including:

* Total Sales
* Total Cost
* Total Profit
* Total Orders
* Total Quantity Sold

### 4. Sales & Profit Analysis

Analyzed:

* Sales by Region
* Profit by Region
* Sales by Month
* Sales by City
* Profit by City

### 5. Customer Analysis

Analyzed:

* Top customers by sales
* Top customers by profit
* Customers with the highest number of orders

### 6. Product & Category Analysis

Analyzed:

* Sales by Product
* Profit by Product
* Sales by Product Category
* Profit by Product Category
* Profit Margin by Product Category

### 7. Salesperson Analysis

Analyzed:

* Sales by Salesperson
* Profit by Salesperson
* Orders by Salesperson

---

## 📈 Business KPIs

| KPI                 |      Result |
| ------------------- | ----------: |
| Total Sales         | 921,232,075 |
| Total Cost          | 693,913,000 |
| Total Profit        | 227,319,075 |
| Total Orders        |       1,000 |
| Total Quantity Sold |       3,986 |
| Average Order Value | 921,232.075 |
| Profit Margin       |      24.68% |

---

## 💡 Key Business Insights

### 🥇 Highest Sales Region

**Yangon** generated the highest sales among the analyzed regions.

### 💻 Most Profitable Product

**Laptop** generated the highest profit among the products analyzed.

### 👤 Top Salesperson

**Nandar** generated the highest sales among the salespeople.

### 📅 Highest Sales Month

**April** generated the highest monthly sales, with approximately:

```text
127,333,461
```

### 💰 Overall Profitability

The business generated approximately:

```text
227,319,075
```

in total profit, representing an overall profit margin of:

```text
24.68%
```

---

## 🧠 SQL Skills Demonstrated

This project demonstrates practical SQL skills including:

* `SELECT`
* `WHERE`
* `COUNT`
* `COUNT(DISTINCT)`
* `SUM`
* `GROUP BY`
* `ORDER BY`
* `HAVING`
* `ROUND`
* `NULLIF`
* `MONTH()`
* Aggregate Functions
* Data Quality Checks
* Business KPI Calculations
* Sales Analysis
* Customer Analysis
* Product Analysis
* Regional Analysis
* Salesperson Analysis
* `INFORMATION_SCHEMA`

---

## 📁 Project Structure

```text
Retail-Sales-SQL-Analysis
│
├── README.md
│
├── SQL
│   └── Retail_Sales_Analysis.sql
│
├── Dataset
│   └── Sales_Data_Clean.csv
│
└── Screenshots
    ├── KPI_Results.png
    ├── Region_Analysis.png
    ├── Product_Analysis.png
    └── Customer_Analysis.png
```

---

## 🚀 Project Outcome

This project demonstrates how SQL can be used to analyze retail business data and convert raw transactional data into useful business information.

The analysis helps identify:

* Revenue performance
* Profitability
* Sales trends
* Customer performance
* Product performance
* Regional performance
* Salesperson performance

The project is part of my **Data Analyst / Business Intelligence portfolio** and demonstrates my ability to use SQL for practical business analysis.

---

## 👨‍💻 Author

**Zayar Lin Htet**

Computer Science Student
Professional Diploma in Business Intelligence & Data Analysis

### Areas of Interest

* Data Analysis
* Business Intelligence
* SQL
* Microsoft Excel
* Data Visualization
* Data Engineering

---

⭐ **This project was created as part of my Data Analyst / BI Analyst portfolio.**
