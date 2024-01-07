# Project README

# ⭐️ Overview ⭐️

This repository contains a Power BI project for analyzing data from various tables. The primary tables imported and cleaned are:

##  Orders Table:

- 🌺 Imported from Azure SQL Database (`orders_powerbi` table).
- 🌺 Removed sensitive information for data privacy.
- 🌺 Split [Order Date] and [Shipping Date] into date and time columns.
- 🌺 Filtered out rows with missing [Order Date].

##  Products Table:

- 🌸 Imported from 'Products.csv' file.
- 🌸 Removed duplicate entries in the 'product_code' column.
- 🌸 Cleaned and transformed the 'Weight' column by creating new columns for values and units.
- 🌸 Handled data type conversion and errors during the process.
- 🌸 Created a calculated column to convert non-'kg' units to kilograms.
- 🌸 Deleted unnecessary columns.

##  Stores Table:

- 🌺 Imported from Azure Blob Storage.
- 🌺 Cleaned and renamed columns for consistency.

##  Customers Table:

- 🌸 Imported from the 'Customers' folder.
- 🌸 Created a 'Full Name' column.
- 🌸 Deleted unused columns.


## Data Modeling and Measures:

1. **Create Date Table:**
   - 🌺 Generated a continuous date table covering the entire time period from the start of the year to the end.

2. **Hierarchies:**
   - 🌺 Created two hierarchies:
     - 🌸 Date Hierarchy (Start of Year, Start of Quarter, Start of Month, Start of Week, Date)
     - 🌸 Geography Hierarchy (World Region, Country, Country Region)

3. **Calculated Columns:**
   - 🌺 In the Stores table:
     - 🌸 Country: Creates a full country name based on the Stores[Country Code].
     - 🌸 Geography: Creates a full geography name based on the Stores[Country Region] and Stores[Country] columns.

4. **Key Measures:**
   - 🌺 Created key measures for analysis:
     - 🌸 Total Orders
     - 🌸 Total Revenue
     - 🌸 Total Profit
     - 🌸 Total Customers
     - 🌸 Total Quantity
     - 🌸 Profit YTD
     - 🌸 Revenue YTD

## Data Model:


[![Data Model](https://github.com/Saba-Rostami/data-analytics-power-bi-report739/raw/master/Data%20Model.png)](https://github.com/Saba-Rostami/data-analytics-power-bi-report739/blob/master/Data%20Model.png?raw=true)


## Report Pages

### Executive Summary
- 🌸 Sidebar navigation using rectangles.
- 🌸 Card visuals for total revenue, total orders and total profit.
- 🌸 Line chart for total revenue with drill-down to the month level
- 🌸  Donut charts for total order and total revenue by country
- 🌸  Bar chart for total orders by category.
- 🌸  KPIs for quaterly revenue, customers and profit

[![Executive Summary](https://raw.githubusercontent.com/Saba-Rostami/data-analytics-power-bi-report739/af7ab4bd5e2af3cd154e7d4882f17ebefc94ddc3/Executive%20Summary%20report.png)
  
### Customer Detail
- 🌸  Sidebar navigation using rectangles.
- 🌸  Card visuals for total customers, revenue per customer, top customer's full name, revenue and number of orders.
- 🌸  Donut chart for total number of customers by country.
- 🌸  Bar chart for total number of customers who purchased each product category.
- 🌸  Line chart for Total Customers with drill-down to the month level and a trend line with a 95% confidence interval.
- 🌸  Top 20 customers table with conditional formatting on the revenue column.
- 🌸  Date slicer for filtering by year.

[![Customer Detail](https://raw.githubusercontent.com/Saba-Rostami/data-analytics-power-bi-report739/af7ab4bd5e2af3cd154e7d4882f17ebefc94ddc3/Customer%20Detail%20report.png)

### Product Detail
- 🌸 Sidebar navigation using rectangles.
- 🌸 Three gauges added for Orders, Revenue, and Profit.
- 🌸 Area chart added to show product categories' revenue performance over time.
- 🌸 Table showcasing top-selling products with key metrics.
- 🌸 Scatter chart added to identify top-selling and profitable product ranges.
- 🌸 Pop-out slicer toolbar created using bookmarks.
- 🌸 Custom icons used for visual appeal.
- 🌸 Back button included for easy navigation.

[![Product Detail](https://raw.githubusercontent.com/Saba-Rostami/data-analytics-power-bi-report739/4ca5aa4c9d3ac1d1b79f85984aa3af532dc13325/Product%20Details%201.png)

[![Product Detail](https://raw.githubusercontent.com/Saba-Rostami/data-analytics-power-bi-report739/4ca5aa4c9d3ac1d1b79f85984aa3af532dc13325/Product%20Details%202.png)

### Store Map
- 🌸 Added a new map visual to show the stores' locations.
- 🌸 A slicer for selecting the store's country.

[![Stores Drillthrough](https://raw.githubusercontent.com/Saba-Rostami/data-analytics-power-bi-report739/8072488fc2d64986b96786b2357545f309fcd7d1/Store%20Map.png)


### Stores Drillthrough:
  
  - 🌸 A table showing the top 5 products.
  - 🌸 A column chart showing Total Orders by product category for the store
  - 🌸 Gauge for Profit YTD against a profit target of 20% year-on-year growth vs. the same period in the previous year.
  - 🌸 Gauge for Revenue YTD against a revenue target of 20% year-on-year growth vs. the same period in the previous year.
  - 🌸 A Card visual showing the currently selected store
 
[![Stores Drillthrough](https://raw.githubusercontent.com/Saba-Rostami/data-analytics-power-bi-report739/8072488fc2d64986b96786b2357545f309fcd7d1/Store%20Drillthrough.png)



### Custom Tooltip:
  
  - 🌸 Profit gauge visual for users to be able to see each store's year-to-date profit performance against the profit target just by hovering the mouse over a store on the map.
 
[![Custom Tooltip](https://raw.githubusercontent.com/Saba-Rostami/data-analytics-power-bi-report739/8072488fc2d64986b96786b2357545f309fcd7d1/Tooltip.png)

## SQL Metrics for Users Outside the Company

### Queries and Exported Results

1. **How many staff are there in all of the UK stores?**
   - 🌸 Query: [question_1.sql](https://github.com/Saba-Rostami/data-analytics-power-bi-report739/blob/master/Question_1.sql)
   - 🌸 Result: [question_1.csv](https://github.com/Saba-Rostami/data-analytics-power-bi-report739/blob/master/Question_1.csv)

2. **Which month in 2022 has had the highest revenue?**
   - 🌸 Query: [question_2.sql](https://github.com/Saba-Rostami/data-analytics-power-bi-report739/blob/master/Question_2.sql)
   - 🌸 Result: [question_2.csv](https://github.com/Saba-Rostami/data-analytics-power-bi-report739/blob/master/Question_2.csv)
   
3. **Which German store type had the highest revenue for 2022?**
   - 🌸 Query: [question_3.sql](https://github.com/Saba-Rostami/data-analytics-power-bi-report739/blob/master/Question_3.sql)
   - 🌸 Result: [question_3.csv](https://github.com/Saba-Rostami/data-analytics-power-bi-report739/blob/master/Question_3.csv)

4. **Create a view where the rows are the store types and the columns are the total sales, percentage of total sales, and the count of orders**
   - 🌸 Query: [question_4.sql](https://github.com/Saba-Rostami/data-analytics-power-bi-report739/blob/master/Question_4.sql)
   - 🌸 Result: [question_4.csv](https://github.com/Saba-Rostami/data-analytics-power-bi-report739/blob/master/Question_4.csv)

5. **Which product category generated the most profit for the "Wiltshire, UK" region in 2021?**
   - 🌸 Query: [question_5.sql](https://github.com/Saba-Rostami/data-analytics-power-bi-report739/blob/master/Question_5.sql)
   - 🌸 Result: [question_5.csv](https://github.com/Saba-Rostami/data-analytics-power-bi-report739/blob/master/Question_5.csv)



