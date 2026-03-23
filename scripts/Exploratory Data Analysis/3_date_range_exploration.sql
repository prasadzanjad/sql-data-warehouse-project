/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF()
===============================================================================
*/

--Determine the date of the first and last order and total duration of sales

SELECT 
MIN(order_date) AS  first_order_date,
MAX(order_date) AS  last_order_date,
DATEDIFF(YEAR,MIN(order_date),MAX(order_date)) AS order_range_years,
DATEDIFF(MONTH,MIN(order_date),MAX(order_date)) AS order_range_months
FROM gold.fact_sales

-- Find the youngest and oldest customer 
SELECT
MIN(birthdate) AS oldest_birthdate,
DATEDIFF(YEAR, MIN(birthdate), GETDATE()) AS age_oldest_customer,
MAX(birthdate) AS youngest_birthdate,
DATEDIFF(YEAR, MAX(birthdate), GETDATE()) AS age_youngest_customer
FROM gold.dim_customers