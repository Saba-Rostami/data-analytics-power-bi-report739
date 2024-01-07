
/* 2. Which month in 2022 has had the highest revenue? */

SELECT
  month_name,
  SUM(revenue) AS total_revenue
FROM (
  SELECT 
    product_quantity * sale_price AS revenue,
    month_name,
    CAST(dates AS DATE) AS date_column
  FROM forquerying2
  WHERE EXTRACT(YEAR FROM CAST(dates AS DATE)) = 2022
) subquery
GROUP BY
  month_name
ORDER BY
  total_revenue DESC
LIMIT 1;