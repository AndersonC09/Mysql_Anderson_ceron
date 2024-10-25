SELECT 
    product.name AS product_name,
    invoice.id AS invoice_id,
    invoice_product.quantity,
    invoice_product.unit_price
FROM 
    product
LEFT JOIN invoice_product ON product.id = invoice_product.id_product
LEFT JOIN invoice ON invoice_product.id_invoice = invoice.id;
