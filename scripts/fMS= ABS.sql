use store;
SELECT 
    i.id AS product_id,
    p.name AS product_name,
    i.stock AS current_stock,
    ABS(i.stock - 50) AS stock_difference
FROM 
    inventory i
JOIN 
    product p ON i.id_product = p.id;
