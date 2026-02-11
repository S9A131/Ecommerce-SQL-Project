SELECT c.name, SUM(p.amount) AS revenue,
RANK() OVER(ORDER BY SUM(p.amount) DESC) AS rank_position
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
JOIN payments p ON o.order_id=p.order_id
WHERE p.payment_status='Success'
GROUP BY c.name;

WITH sales AS (
    SELECT pr.category, SUM(oi.total_price) AS revenue
    FROM products pr
    JOIN order_items oi ON pr.product_id=oi.product_id
    GROUP BY pr.category
)
SELECT * FROM sales WHERE revenue>5000;