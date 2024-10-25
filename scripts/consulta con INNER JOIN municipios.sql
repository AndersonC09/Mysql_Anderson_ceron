SELECT 
    municipality.name AS municipality_name,
    department.name AS department_name,
    country.name AS country_name
FROM 
    municipality
INNER JOIN department ON municipality.id = department.id
INNER JOIN country ON department.id_country = country.id;
