-- Crear base de datos
CREATE DATABASE store;

-- Usar base de datos
USE store;

-- Tabla country
CREATE TABLE country (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

-- Tabla department
CREATE TABLE department (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  id_country INT(11),
  FOREIGN KEY (id_country) REFERENCES country(id)
);

-- Tabla municipality
CREATE TABLE municipality (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  id_department INT(11),
  FOREIGN KEY (id_department) REFERENCES department(id)
);

-- Tabla document_type
CREATE TABLE document_type (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

-- Tabla person
CREATE TABLE person (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  id_document_type INT(11),
  document_number VARCHAR(50),
  id_municipality INT(11),
  FOREIGN KEY (id_document_type) REFERENCES document_type(id),
  FOREIGN KEY (id_municipality) REFERENCES municipality(id)
);

-- Tabla role
CREATE TABLE role (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

-- Tabla person_role
CREATE TABLE person_role (
  id_person INT(11),
  id_role INT(11),
  PRIMARY KEY (id_person, id_role),
  FOREIGN KEY (id_person) REFERENCES person(id),
  FOREIGN KEY (id_role) REFERENCES role(id)
);

-- Tabla product_type
CREATE TABLE product_type (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

-- Tabla product
CREATE TABLE product (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  price DECIMAL(10,2) NOT NULL,
  id_product_type INT(11),
  FOREIGN KEY (id_product_type) REFERENCES product_type(id)
);

-- Tabla invoice
CREATE TABLE invoice (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  id_seller INT(11),
  id_customer INT(11),
  date DATE NOT NULL,
  total DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (id_seller) REFERENCES person(id),
  FOREIGN KEY (id_customer) REFERENCES person(id)
);

-- Tabla invoice_product
CREATE TABLE invoice_product (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  id_invoice INT(11),
  id_product INT(11),
  quantity INT(11) NOT NULL,
  unit_price DECIMAL(10,2) NOT NULL,
  subtotal DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (id_invoice) REFERENCES invoice(id),
  FOREIGN KEY (id_product) REFERENCES product(id)
);

-- Nueva tabla payment_method (Métodos de pagos)
CREATE TABLE payment_method (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

-- Nueva tabla payment (Pagos)
CREATE TABLE payment (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  id_invoice INT(11),
  id_payment_method INT(11),
  amount DECIMAL(10,2) NOT NULL,
  date DATE NOT NULL,
  FOREIGN KEY (id_invoice) REFERENCES invoice(id),
  FOREIGN KEY (id_payment_method) REFERENCES payment_method(id)
);

-- Nueva tabla inventory (Inventario de productos)
CREATE TABLE inventory (
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  id_product INT(11),
  stock INT(11) NOT NULL,
  last_update DATE NOT NULL,
  FOREIGN KEY (id_product) REFERENCES product(id)
);
