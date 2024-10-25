##modificacion a la base de datos 
use store;
-- Renombrar la tabla person a users y cambiar los atributos
ALTER TABLE person RENAME TO users;
ALTER TABLE users RENAME COLUMN name TO email;
ALTER TABLE users RENAME COLUMN document_number TO password;

-- Crear la nueva tabla peoples y relacionarla con users
CREATE TABLE peoples (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name1 VARCHAR(100),
    name2 VARCHAR(100),
    last_name1 VARCHAR(100),
    last_name2 VARCHAR(100),
    document_number VARCHAR(50),
    id_user INT,
    FOREIGN KEY (id_user) REFERENCES users(id)
);

-- Renombrar la tabla inventory a store_products y eliminar stock y last_update
ALTER TABLE inventory RENAME TO store_products;
ALTER TABLE store_products DROP COLUMN stock;
ALTER TABLE store_products DROP COLUMN last_update;

-- Crear la tabla store con los atributos eliminados
CREATE TABLE stores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_store_product INT,
    stock INT,
    last_update DATE,
    FOREIGN KEY (id_store_product) REFERENCES store_products(id)
);

-- Agregar una clave primaria compuesta a la tabla person_role
ALTER TABLE person_role ADD PRIMARY KEY (id_person, id_role);

-- Renombrar las tablas a plural
ALTER TABLE country RENAME TO countries;
ALTER TABLE department RENAME TO departments;
ALTER TABLE municipality RENAME TO municipalities;
ALTER TABLE document_type RENAME TO document_types;
ALTER TABLE product_type RENAME TO product_types;
ALTER TABLE invoice_product RENAME TO invoice_products;
ALTER TABLE product RENAME TO products;
ALTER TABLE invoice RENAME TO invoices;
ALTER TABLE role RENAME TO roles;
ALTER TABLE payment_method RENAME TO payment_methods;
ALTER TABLE payment RENAME TO payments;
