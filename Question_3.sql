/* 3. Which German store type had the highest revenue for 2022? */

SELECT 
  store_type, SUM(product_quantity * sale_price) AS total_revenue
FROM
  forquerying2
WHERE 
  country = 'Germany' 
GROUP BY
  store_type
ORDER BY
  total_revenue DESC
LIMIT 1;