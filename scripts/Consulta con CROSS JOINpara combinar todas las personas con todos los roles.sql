SELECT 
    person.name AS person_name,
    role.role_name
FROM 
    person
CROSS JOIN role;
