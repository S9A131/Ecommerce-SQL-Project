-- Total Revenue
SELECT SUM(amount) AS total_revenue FROM payments WHERE payment_status='Success';

-- Monthly Revenue
SELECT MONTH(payment_date) AS month, SUM(amount) AS revenue
FROM payments WHERE payment_status='Success'
GROUP BY MONTH(payment_date);

-- Top Customers
SELECT c.name, SUM(p.amount) AS spent
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
JOIN payments p ON o.order_id=p.order_id
WHERE p.payment_status='Success'
GROUP BY c.name
ORDER BY spent DESC;

-- Best Selling Products
SELECT pr.product_name, SUM(oi.quantity) AS sold
FROM products pr
JOIN order_items oi ON pr.product_id=oi.product_id
GROUP BY pr.product_name
ORDER BY sold DESC;

-- City wise customers
SELECT city, COUNT(*) AS total_customers
FROM customers GROUP BY city;