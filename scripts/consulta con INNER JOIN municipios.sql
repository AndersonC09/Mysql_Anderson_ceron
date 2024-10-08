SELECT 
    municipality.name AS municipality_name,
    department.name AS department_name,
    country.name AS country_name
FROM 
    municipality
INNER JOIN department ON municipality.id_department = department.id_department
INNER JOIN country ON department.id_country = country.id_country;
