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




