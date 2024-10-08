##CREATE DATABASE IF NOT EXISTS store;
USE store;

CREATE TABLE country (
    id_country INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE department (
    id_department INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    id_country INT,
    FOREIGN KEY (id_country) REFERENCES country(id_country)
);

CREATE TABLE document_type (
    id_document_type INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE municipality (
    id_municipality INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    id_department INT,
    FOREIGN KEY (id_department) REFERENCES department(id_department)
);

CREATE TABLE product_type (
    id_product_type INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE product (
    id_product INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    id_product_type INT,
    FOREIGN KEY (id_product_type) REFERENCES product_type(id_product_type)
);

-- Create person table
CREATE TABLE person (
    id_person INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    id_document_type INT,
    document_number VARCHAR(50),
    id_municipality INT,
    FOREIGN KEY (id_document_type) REFERENCES document_type(id_document_type),
    FOREIGN KEY (id_municipality) REFERENCES municipality(id_municipality)
);

-- Create role table
CREATE TABLE role (
    id_role INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL
);

-- Insert predefined roles
INSERT INTO role (role_name) 
VALUES ('Seller'), ('Customer'), ('Supplier');

-- Create intermediate table person_role (Many-to-many between person and role)
CREATE TABLE person_role (
    id_person INT,
    id_role INT,
    PRIMARY KEY (id_person, id_role),
    FOREIGN KEY (id_person) REFERENCES person(id_person) ON DELETE CASCADE,
    FOREIGN KEY (id_role) REFERENCES role(id_role) ON DELETE CASCADE
);

-- Create invoice table
CREATE TABLE invoice (
    id_invoice INT AUTO_INCREMENT PRIMARY KEY,
    id_seller INT,
    id_customer INT,
    date DATE NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_seller) REFERENCES person(id_person) ON DELETE SET NULL,
    FOREIGN KEY (id_customer) REFERENCES person(id_person) ON DELETE SET NULL
);

-- Create invoice_product table
CREATE TABLE invoice_product (
    id_invoice_product INT AUTO_INCREMENT PRIMARY KEY,
    id_invoice INT,
    id_product INT,
    quantity INT NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    subtotal DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_invoice) REFERENCES invoice(id_invoice) ON DELETE CASCADE,
    FOREIGN KEY (id_product) REFERENCES product(id_product) ON DELETE CASCADE
);
