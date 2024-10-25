SELECT 
    product.name AS product_name,
    invoice.id AS invoice_id,
    invoice.total
FROM 
    product
CROSS JOIN invoice;
