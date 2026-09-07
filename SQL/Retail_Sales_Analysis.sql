USE [RetailSalesDB];
GO

/* =====================================================
   RETAIL SALES ANALYSIS
   SQL Portfolio Project
   ===================================================== */


/* =====================================================
   01. DATA EXPLORATION
   ===================================================== */

-- View sample data
SELECT TOP 10 *
FROM [dbo].[Sales_Data_Clean$];

-- Check total rows
SELECT COUNT(*) AS Total_Rows
FROM [dbo].[Sales_Data_Clean$];

-- Check column names and data types
SELECT
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Sales_Data_Clean$'
ORDER BY ORDINAL_POSITION;


/* =====================================================
   02. DATA QUALITY
   ===================================================== */

-- Check duplicate Order IDs
SELECT
    Order_ID,
    COUNT(*) AS Order_Count
FROM [dbo].[Sales_Data_Clean$]
GROUP BY Order_ID
HAVING COUNT(*) > 1;

-- Check missing Customer IDs
SELECT COUNT(*) AS Missing_Customer_ID
FROM [dbo].[Sales_Data_Clean$]
WHERE Customer_ID IS NULL;

-- Check missing Products
SELECT COUNT(*) AS Missing_Product
FROM [dbo].[Sales_Data_Clean$]
WHERE Product IS NULL;


/* =====================================================
   03. BUSINESS KPIs
   ===================================================== */

SELECT
    SUM(Sales) AS Total_Sales,
    SUM(Cost) AS Total_Cost,
    SUM(Profit) AS Total_Profit,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    SUM(Quantity) AS Total_Quantity
FROM [dbo].[Sales_Data_Clean$];


/* =====================================================
   04. SALES & PROFIT ANALYSIS
   ===================================================== */

-- Sales by Region
SELECT
    Region,
    SUM(Sales) AS Total_Sales
FROM [dbo].[Sales_Data_Clean$]
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Profit by Region
SELECT
    Region,
    SUM(Profit) AS Total_Profit
FROM [dbo].[Sales_Data_Clean$]
GROUP BY Region
ORDER BY Total_Profit DESC;

-- Sales by Month
SELECT
    MONTH(Order_Date) AS Sales_Month,
    SUM(Sales) AS Total_Sales
FROM [dbo].[Sales_Data_Clean$]
GROUP BY MONTH(Order_Date)
ORDER BY Total_Sales DESC;


/* =====================================================
   05. CUSTOMER ANALYSIS
   ===================================================== */

-- Top Customers by Sales
SELECT
    Customer_ID,
    Customer_Name,
    SUM(Sales) AS Total_Sales
FROM [dbo].[Sales_Data_Clean$]
GROUP BY Customer_ID, Customer_Name
ORDER BY Total_Sales DESC;

-- Top Customers by Profit
SELECT
    Customer_ID,
    Customer_Name,
    SUM(Profit) AS Total_Profit
FROM [dbo].[Sales_Data_Clean$]
GROUP BY Customer_ID, Customer_Name
ORDER BY Total_Profit DESC;

-- Customers with Most Orders
SELECT
    Customer_ID,
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM [dbo].[Sales_Data_Clean$]
GROUP BY Customer_ID, Customer_Name
ORDER BY Total_Orders DESC;


/* =====================================================
   06. PRODUCT & CATEGORY ANALYSIS
   ===================================================== */

-- Sales by Product
SELECT
    Product,
    SUM(Sales) AS Total_Sales
FROM [dbo].[Sales_Data_Clean$]
GROUP BY Product
ORDER BY Total_Sales DESC;

-- Profit by Product
SELECT
    Product,
    SUM(Profit) AS Total_Profit
FROM [dbo].[Sales_Data_Clean$]
GROUP BY Product
ORDER BY Total_Profit DESC;

-- Sales and Profit by Category
SELECT
    Product_Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM [dbo].[Sales_Data_Clean$]
GROUP BY Product_Category
ORDER BY Total_Sales DESC;

-- Profit Margin by Category
SELECT
    Product_Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(
        SUM(Profit) * 100.0 /
        NULLIF(SUM(Sales), 0),
        2
    ) AS Profit_Margin_Percent
FROM [dbo].[Sales_Data_Clean$]
GROUP BY Product_Category
ORDER BY Profit_Margin_Percent DESC;


/* =====================================================
   07. REGION & SALESPERSON ANALYSIS
   ===================================================== */

-- Sales by City
SELECT
    City,
    SUM(Sales) AS Total_Sales
FROM [dbo].[Sales_Data_Clean$]
GROUP BY City
ORDER BY Total_Sales DESC;

-- Profit by City
SELECT
    City,
    SUM(Profit) AS Total_Profit
FROM [dbo].[Sales_Data_Clean$]
GROUP BY City
ORDER BY Total_Profit DESC;

-- Sales by Salesperson
SELECT
    Salesperson,
    SUM(Sales) AS Total_Sales
FROM [dbo].[Sales_Data_Clean$]
GROUP BY Salesperson
ORDER BY Total_Sales DESC;

-- Profit by Salesperson
SELECT
    Salesperson,
    SUM(Profit) AS Total_Profit
FROM [dbo].[Sales_Data_Clean$]
GROUP BY Salesperson
ORDER BY Total_Profit DESC;

-- Orders by Salesperson
SELECT
    Salesperson,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM [dbo].[Sales_Data_Clean$]
GROUP BY Salesperson
ORDER BY Total_Orders DESC;
