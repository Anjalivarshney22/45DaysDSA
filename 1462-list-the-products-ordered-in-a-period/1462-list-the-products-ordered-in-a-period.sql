WITH cte AS (
    SELECT 
        e1.product_id,
        e1.order_date,
        e1.unit,
        e2.product_name,
        e2.product_category 
    FROM Orders e1 
    JOIN Products e2 ON e1.product_id = e2.product_id
)
SELECT 
    product_name, 
    SUM(unit) AS unit 
FROM cte 
WHERE MONTH(order_date) = 2 AND YEAR(order_date) = 2020
GROUP BY product_name 
HAVING SUM(unit) >= 100;
