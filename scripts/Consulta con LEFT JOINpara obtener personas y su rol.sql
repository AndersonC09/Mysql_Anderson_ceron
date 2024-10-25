SELECT 
    person.name AS person_name,
    role.role_name
FROM 
    person
LEFT JOIN person_role ON person.id = person_role.id_person
LEFT JOIN role ON person_role.id_role = role.id;
