use store;
SELECT name 
FROM product 
WHERE id IN (
  SELECT id_product 
  FROM invoice_product 
  WHERE id_invoice IN (
    SELECT id 
    FROM invoice 
    WHERE id_customer = (SELECT id FROM person WHERE name = 'John Doe')
  )
);
