WITH FirstOrders AS (
    SELECT customer_id, MIN(order_date) AS first_order_date
    FROM Delivery
    GROUP BY customer_id
)
SELECT 
    ROUND(
        (COUNT(CASE WHEN d.order_date = d.customer_pref_delivery_date THEN 1 END) * 100.0) / COUNT(*),
        2
    ) AS immediate_percentage
FROM Delivery d
JOIN FirstOrders fo ON d.customer_id = fo.customer_id
WHERE d.order_date = fo.first_order_date;
