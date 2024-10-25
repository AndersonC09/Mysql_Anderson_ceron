use store;
SELECT p.id_municipality, AVG(i.total) AS average_invoice_total
FROM invoice i
JOIN person p ON i.id_customer = p.id
GROUP BY p.id_municipality;
