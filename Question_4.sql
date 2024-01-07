/* 4. Create a view where the rows are the store types and the columns are the total sales, 
percentage of total sales and the count of orders*/


SELECT s.store_type,
    sum(((o.product_quantity)::double precision * p.sale_price)) AS total_sales,
        CASE
            WHEN (total_sales_all_subquery.total_sales_all = (0)::double precision) THEN (0)::double precision
            ELSE ((sum(((o.product_quantity)::double precision * p.sale_price)) / total_sales_all_subquery.total_sales_all) * (100)::double precision)
        END AS percentage_of_total_sales,
    count(*) AS order_count
   FROM (((orders o
     JOIN dim_store s ON ((o.store_code = s.store_code)))
     JOIN dim_product p ON ((o.product_code = p.product_code)))
     CROSS JOIN ( SELECT COALESCE(sum(((o2.product_quantity)::double precision * p2.sale_price)), (0)::double precision) AS total_sales_all
           FROM (orders o2
             JOIN dim_product p2 ON ((o2.product_code = p2.product_code)))) total_sales_all_subquery)
  WHERE ((o.store_code IS NOT NULL) AND (o.product_code IS NOT NULL) AND (s.store_type IS NOT NULL) AND (p.sale_price IS NOT NULL))
  GROUP BY s.store_type, total_sales_all_subquery.total_sales_all;

