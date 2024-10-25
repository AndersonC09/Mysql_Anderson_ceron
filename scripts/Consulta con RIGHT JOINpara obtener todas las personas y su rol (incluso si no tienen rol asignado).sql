SELECT 
    person.name AS person_name,
    role.role_name
FROM 
    person_role
RIGHT JOIN person ON person_role.id_person = person.id
RIGHT JOIN role ON person_role.id_role = role.id;
