use store;

CREATE VIEW customer_invoices AS
SELECT 
    i.id AS invoice_id,
    p.name1 AS customer_name,
    p.document_number AS customer_document,
    i.date AS invoice_date,
    i.total AS invoice_total
FROM 
    invoices i
JOIN users u ON i.id_customer = u.id
JOIN peoples p ON u.id = p.id;

###Esta vista muestra las facturas generadas por cada cliente, incluyendo el total de la factura, su nombre y su documento.