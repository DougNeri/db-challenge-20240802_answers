SELECT p.product_id, p.product_name, p.model_year, p.list_price
FROM production.products p
LEFT JOIN sales.order_items oi ON p.product_id = oi.product_id
WHERE oi.order_id IS NULL;
