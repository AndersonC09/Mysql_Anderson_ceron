use store;
SELECT 
  UPPER(p.name) AS customer_name_uppercase
FROM person p
JOIN person_role pr ON p.id = pr.id_person
JOIN role r ON pr.id_role = r.id
WHERE r.name = 'Customer';
