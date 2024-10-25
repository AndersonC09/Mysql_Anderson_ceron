use store;
SELECT 
    pt.name AS product_type_name,
    COUNT(p.id) AS product_count
FROM 
    product p
JOIN 
    product_type pt ON p.id_product_type = pt.id
GROUP BY 
    pt.name;

