use store;
SELECT 
  CONCAT(p.name, ' (', p.document_number, ') - ', m.name) AS client_info
FROM person p
JOIN municipality m ON p.id_municipality = m.id
JOIN person_role pr ON p.id = pr.id_person
JOIN role r ON pr.id_role = r.id
WHERE r.name = 'Customer';

