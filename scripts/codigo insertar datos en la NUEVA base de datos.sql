-- Insertamos datos a countries
INSERT INTO country (name) VALUES 
('Colombia'),
('Brazil'),
('Argentina'),
('Peru'),
('Mexico');

-- Insertamos datos a departments y numero o id al cual pertebece el departamento
INSERT INTO department (name, id_country) VALUES 
('Amazonas', 1), 
('Bogota', 1), 
('São Paulo', 2), 
('Buenos Aires', 3), 
('Lima', 4);

-- Insertamos datos a municipalities y numero o id al cual pertenece el municipio
INSERT INTO municipality (name, id_department) VALUES 
('Leticia', 1), 
('Bogota D.C.', 2), 
('São Paulo City', 3), 
('Buenos Aires City', 4), 
('Lima City', 5);

-- insertamos datos en document types
INSERT INTO document_type (name) VALUES 
('Passport'), 
('ID Card'), 
('License');

-- Insertamo datos a person y le colocamos el id al cual pertenece el tipo de documento y id de su municipio
INSERT INTO person (name, id_document_type, document_number, id_municipality) VALUES 
('alexandra rodriguez', 2, '123456789', 1), 
('camilo gutierrez', 1, '987654321', 2), 
('Carlos Silva', 3, '1122334455', 3), 
('María González', 2, '9988776655', 4), 
('Pedro Ramos', 1, '5566778899', 5);

-- Insertamos datos a  roles 
INSERT INTO role (role_name) VALUES 
('Seller'), 
('Customer'), 
('Supplier');

-- Insertamos datos a person-role 
INSERT INTO person_role (id_person, id_role) VALUES 
(1, 1), -- alexandra rodriguez es el id:1 y su role es : 1 seller asi para cada uno 
(2, 2), 
(3, 1), 
(4, 2);
 

-- Insertamos datos a  product types
INSERT INTO product_type (name) VALUES 
('Electronics'), 
('Groceries'), 
('Clothing'), 
('Furniture'), 
('Books');

-- Insertamos datos a  products y le colocamos el id al cual tipo de producto pertenece
INSERT INTO product (name, description, price, id_product_type) VALUES 
('Smartphone', 'Latest model smartphone', 799.99, 1),
('Bread', 'Freshly baked bread', 1.50, 2),
('T-Shirt', 'Cotton T-Shirt', 9.99, 3),
('Sofa', 'Comfortable leather sofa', 499.99, 4),
('Novel', 'Bestselling novel', 14.99, 5);

-- Insertamos datos a invoice tiene su respetivo id de seller y customer
INSERT INTO invoice (id_seller, id_customer, date, total) VALUES 
(1, 2, '2024-10-07', 814.97); -- John Doe sold to Jane Smith

-- Insertamos datos a  invoice details y su respetivo id invoice y product
INSERT INTO invoice_product (id_invoice, id_product, quantity, unit_price, subtotal) VALUES 
(1, 1, 1, 799.99, 799.99), -- 1 Smartphone
(1, 5, 1, 14.99, 14.99); -- 1 Novel

