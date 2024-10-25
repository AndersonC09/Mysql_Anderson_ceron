use store;
SELECT p.name, SUM(i.stock) as total_stock
FROM product p
JOIN inventory i ON p.id = i.id_product
GROUP BY p.name
HAVING total_stock > 50;


