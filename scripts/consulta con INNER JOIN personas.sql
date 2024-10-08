use  store;
SELECT 
    person.name  AS person_name,
    role.role_name
FROM 
    person
INNER JOIN person_role ON person.id_person = person_role.id_person
INNER JOIN role ON person_role.id_role = role.id_role;
