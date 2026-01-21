-- View sample data
SELECT * FROM superstore LIMIT 10;

-- Total rows
SELECT COUNT(*) FROM superstore;

-- Filter by category
SELECT * FROM superstore WHERE Category = 'Technology';

-- Top sales records
SELECT * FROM superstore ORDER BY Sales DESC LIMIT 10;

-- Total sales by category
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category;

-- Average profit by region
SELECT Region, AVG(Profit) AS Avg_Profit
FROM superstore
GROUP BY Region;

-- Categories with high sales
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
HAVING SUM(Sales) > 100000;

-- Date range filter
SELECT * FROM superstore
WHERE Order_Date BETWEEN '2017-01-01' AND '2017-12-31';

-- Pattern search
SELECT * FROM superstore
WHERE Customer_Name LIKE '%John%';

-- Top 5 customers
SELECT Customer_Name, SUM(Sales) AS Total_Spend
FROM superstore
GROUP BY Customer_Name
ORDER BY Total_Spend DESC
LIMIT 5;
