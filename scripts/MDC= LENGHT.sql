use store;
SELECT 
  name AS product_name, 
  LENGTH(name) AS name_length
FROM product;

SELECT 
  name AS product_name, 
  LENGTH(name) AS name_length
FROM product
WHERE LENGTH(name) > 10;
