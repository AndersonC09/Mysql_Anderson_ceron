##Esta consulta obtiene los productos cuyo precio es mayor que el precio de todos los productos en la categoría de "Furniture".
use store;
SELECT name, price 
FROM product 
WHERE price > ALL (
  SELECT price 
  FROM product 
  WHERE id_product_type = (SELECT id FROM product_type WHERE name > 'Furniture')
);
