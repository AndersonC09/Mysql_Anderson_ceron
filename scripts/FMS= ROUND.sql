use store;
SELECT 
  name AS product_name,
  price AS original_price,
  ROUND(price, 2) AS rounded_price
FROM product;
