/*Dimensions Exploration
===============================================================================
Purpose:
    - To explore the structure of dimension tables.
	
SQL Functions Used:
    - DISTINCT
    - ORDER BY
===============================================================================
*/

--Explore All Countries the Customers are originating form
SELECT DISTINCT 
country
FROM gold.dim_customers

--Explore all the Categories, subcategories "The Major Divisions"
SELECT DISTINCT
category,
subcategory,
product_name
FROM gold.dim_products
ORDER BY 1,2,3
