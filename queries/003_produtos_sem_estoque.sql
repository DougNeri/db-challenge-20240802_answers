SELECT p.product_id, p.product_name, p.model_year, p.list_price
FROM production.products p
INNER JOIN production.stocks s ON p.product_id = s.product_id
WHERE s.quantity = 0;
