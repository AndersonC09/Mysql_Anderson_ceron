##Esta consulta obtiene los productos cuyo precio es mayor que el precio de cualquier producto en la categoría de "Furniture".
use store;
SELECT name, price 
FROM product 
WHERE price > ANY (
  SELECT price 
  FROM product 
  WHERE id_product_type = (SELECT id FROM product_type WHERE name = 'Furniture')
);
