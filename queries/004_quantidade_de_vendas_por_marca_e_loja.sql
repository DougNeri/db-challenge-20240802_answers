SELECT b.brand_name,
       s.store_name,
       COUNT(oi.order_id) AS total_vendas
FROM sales.order_items oi
INNER JOIN production.products p ON oi.product_id = p.product_id
INNER JOIN production.brands b ON p.brand_id = b.brand_id
INNER JOIN sales.orders o ON oi.order_id = o.order_id
INNER JOIN sales.stores s ON o.store_id = s.store_id
GROUP BY b.brand_name, s.store_name
ORDER BY total_vendas DESC;
