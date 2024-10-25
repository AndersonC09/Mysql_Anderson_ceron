SELECT 
    product_type.name AS product_type,
    product.name AS product_name,
    invoice.id AS invoice_id
FROM 
    product
RIGHT JOIN product_type ON product.id_product_type = product_type.id
RIGHT JOIN invoice_product ON product.id = invoice_product.id_product
RIGHT JOIN invoice ON invoice_product.id_invoice = invoice.id;
