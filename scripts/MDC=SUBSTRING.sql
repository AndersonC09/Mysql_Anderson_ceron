use store;
SELECT 
  name AS product_name,
  SUBSTRING(name, 1, 3) AS product_code
FROM product;
