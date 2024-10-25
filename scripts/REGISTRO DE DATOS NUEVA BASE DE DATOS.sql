use store;
-- Insertar datos en la tabla country
INSERT INTO country (name) VALUES 
('United States'), 
('Canada');

-- Insertar datos en la tabla department
INSERT INTO department (name, id_country) VALUES 
('California', 1), 
('Ontario', 2);

-- Insertar datos en la tabla municipality
INSERT INTO municipality (name, id_department) VALUES 
('Los Angeles', 1), 
('Toronto', 2);

-- Insertar datos en la tabla document_type
INSERT INTO document_type (name) VALUES 
('Passport'), 
('Driver License');

-- Insertar datos en la tabla person (Personas: clientes, vendedores y proveedores)
INSERT INTO person (name, id_document_type, document_number, id_municipality) VALUES 
('John Doe', 1, '123456789', 1),  -- Cliente
('Jane Smith', 2, '987654321', 2), -- Vendedor
('Supplier Co.', 1, '333444555', 1); -- Proveedor

-- Insertar datos en la tabla role (Roles: cliente, vendedor, proveedor)
INSERT INTO role (name) VALUES 
('Provider'), 
('Customer'), 
('Seller');

-- Asignar roles a personas en la tabla person_role
INSERT INTO person_role (id_person, id_role) VALUES 
(1, 2),  -- John Doe es un Cliente (Customer)
(2, 3),  -- Jane Smith es un Vendedor (Seller)
(3, 1);  -- Supplier Co. es un Proveedor (Provider)

-- Insertar tipos de producto en la tabla product_type
INSERT INTO product_type (name) VALUES 
('Electronics'), 
('Furniture');

-- Insertar productos en la tabla product
INSERT INTO product (name, description, price, id_product_type) VALUES 
('Laptop', 'High-performance laptop', 1200.00, 1), 
('Chair', 'Ergonomic office chair', 150.00, 2);

-- Insertar facturas en la tabla invoice
INSERT INTO invoice (id_seller, id_customer, date, total) VALUES 
(2, 1, '2024-10-18', 1350.00); -- Venta de Jane Smith a John Doe

-- Insertar productos en las facturas en la tabla invoice_product
INSERT INTO invoice_product (id_invoice, id_product, quantity, unit_price, subtotal) VALUES 
(1, 1, 1, 1200.00, 1200.00),  -- 1 Laptop
(1, 2, 1, 150.00, 150.00);    -- 1 Chair

-- Insertar métodos de pago en la tabla payment_method
INSERT INTO payment_method (name) VALUES 
('Credit Card'), 
('Cash');

-- Insertar pagos en la tabla payment
INSERT INTO payment (id_invoice, id_payment_method, amount, date) VALUES 
(1, 1, 1350.00, '2024-10-18'); -- Pago completo con tarjeta de crédito

-- Insertar inventario en la tabla inventory
INSERT INTO inventory (id_product, stock, last_update) VALUES 
(1, 10, '2024-10-18'),  -- 10 unidades de Laptop en stock
(2, 20, '2024-10-18');  -- 20 unidades de Chair en stock
