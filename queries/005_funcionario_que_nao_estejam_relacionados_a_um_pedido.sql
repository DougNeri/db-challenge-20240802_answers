SELECT e.staff_id, e.first_name, e.last_name, e.email
FROM sales.staffs e
LEFT JOIN sales.orders o ON e.staff_id = o.staff_id
WHERE o.order_id IS NULL;
