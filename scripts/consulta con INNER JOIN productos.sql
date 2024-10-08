use store;
SELECT 
    product.name AS product_name,
    product_type.name AS product_type
   
FROM 
    product
INNER JOIN product_type ON product.id_product_type = product_type.id_product_type;
