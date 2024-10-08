SELECT 
    invoice.id_invoice,
    product.name AS product_name,
    invoice_product.quantity,
    invoice_product.unit_price,
    invoice_product.subtotal
FROM 
    invoice
INNER JOIN invoice_product ON invoice.id_invoice = invoice_product.id_invoice
INNER JOIN product ON invoice_product.id_product = product.id_product
WHERE invoice.id_invoice = 1;  -- Cambia '1' por el ID de la factura que deseas consultar
