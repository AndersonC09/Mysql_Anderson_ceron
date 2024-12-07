use store;
CREATE VIEW BasicCustomerInfo AS
SELECT 
    p.name1 AS first_name,
    p.last_name1 AS last_name,
    u.email AS email
FROM 
    peoples p
JOIN users u ON p.id_user = u.id;
