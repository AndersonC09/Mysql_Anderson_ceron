##Esta consulta lista las personas que han realizado compras (son clientes en alguna factura).
use store;
SELECT name 
FROM person p 
WHERE EXISTS (
  SELECT 1 
  FROM invoice i 
  WHERE i.id_customer = p.id
);
