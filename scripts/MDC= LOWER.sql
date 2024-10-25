use store;
SELECT 
  LOWER(p.name) AS provider_name_lowercase
FROM person p
JOIN person_role pr ON p.id = pr.id_person
JOIN role r ON pr.id_role = r.id
WHERE r.name = 'Provider';
