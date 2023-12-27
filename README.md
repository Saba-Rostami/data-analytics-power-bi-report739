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


