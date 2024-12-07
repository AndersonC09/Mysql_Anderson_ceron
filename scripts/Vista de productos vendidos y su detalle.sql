use store;

CREATE VIEW products_sold AS
SELECT 
    ip.id_invoice AS invoice_id,
    p.name AS product_name,
    ip.quantity AS quantity_sold,
    ip.unit_price AS unit_price,
    ip.subtotal AS subtotal
FROM 
    invoice_products ip
JOIN products p ON ip.id_product = p.id;

###Esta vista muestra un desglose de los productos vendidos, incluyendo cantidad, precio unitario y subtotal por factura.