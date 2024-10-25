use store;
-- Insertar más países
INSERT INTO country (name) VALUES 
('Mexico'), 
('Brazil'), 
('Germany'), 
('Japan');

-- Insertar más departamentos (estados/provincias)
INSERT INTO department (name, id_country) VALUES 
('Nuevo León', 3),       -- México
('São Paulo', 4),        -- Brasil
('Bavaria', 5),          -- Alemania
('Tokyo', 6);            -- Japón

-- Insertar más municipalidades (ciudades)
INSERT INTO municipality (name, id_department) VALUES 
('Monterrey', 3), 
('São Paulo City', 4), 
('Munich', 5), 
('Tokyo City', 6);

-- Insertar más tipos de documentos
INSERT INTO document_type (name) VALUES 
('National ID'), 
('Tax ID');

-- Insertar más personas (clientes, vendedores y proveedores)
INSERT INTO person (name, id_document_type, document_number, id_municipality) VALUES 
('Carlos Rivera', 3, 'MX12345678', 3),   -- Cliente en Monterrey
('Lucía Pérez', 1, 'MX98765432', 3),    -- Vendedora en Monterrey
('Fabrica SA', 4, 'BR54321678', 4),     -- Proveedor en São Paulo
('Hans Müller', 2, 'DE76543210', 5),    -- Cliente en Munich
('Takashi Yamada', 1, 'JP34567890', 6); -- Cliente en Tokyo

-- Insertar más roles (proveedor, cliente, vendedor)
INSERT INTO role (name) VALUES 
('Customer'), 
('Seller'), 
('Provider');

-- Asignar más roles a personas
INSERT INTO person_role (id_person, id_role) VALUES 
(4, 2),  -- Carlos Rivera es un Cliente (Customer)
(5, 3),  -- Lucía Pérez es una Vendedora (Seller)
(6, 1),  -- Fabrica SA es un Proveedor (Provider)
(7, 2),  -- Hans Müller es un Cliente (Customer)
(8, 2);  -- Takashi Yamada es un Cliente (Customer)

-- Insertar más tipos de producto
INSERT INTO product_type (name) VALUES 
('Appliances'), 
('Clothing'), 
('Office Supplies');

-- Insertar más productos
INSERT INTO product (name, description, price, id_product_type) VALUES 
('Washing Machine', 'Energy-efficient washing machine', 600.00, 3), 
('Jeans', 'Classic blue jeans', 40.00, 4), 
('Office Desk', 'Wooden office desk', 250.00, 5),
('Printer', 'Laser printer', 150.00, 5),
('T-shirt', 'Cotton T-shirt', 15.00, 4);

-- Insertar más facturas
INSERT INTO invoice (id_seller, id_customer, date, total) VALUES 
(5, 4, '2024-10-18', 640.00), -- Venta de Lucía Pérez a Carlos Rivera (Washing Machine y Jeans)
(5, 7, '2024-10-19', 190.00), -- Venta de Lucía Pérez a Hans Müller (Printer y T-shirt)
(2, 1, '2024-10-20', 160.00); -- Venta de Jane Smith a John Doe (Office Desk)

-- Insertar más productos en facturas
INSERT INTO invoice_product (id_invoice, id_product, quantity, unit_price, subtotal) VALUES 
(2, 3, 1, 600.00, 600.00),  -- 1 Washing Machine
(2, 4, 1, 40.00, 40.00),    -- 1 Jeans
(3, 5, 1, 150.00, 150.00),  -- 1 Printer
(3, 6, 1, 15.00, 15.00),    -- 1 T-shirt
(4, 7, 1, 250.00, 250.00);  -- 1 Office Desk

-- Insertar más métodos de pago
INSERT INTO payment_method (name) VALUES 
('Bank Transfer'), 
('PayPal');

-- Insertar más pagos
INSERT INTO payment (id_invoice, id_payment_method, amount, date) VALUES 
(2, 3, 640.00, '2024-10-18'), -- Pago por transferencia bancaria de Carlos Rivera
(3, 4, 190.00, '2024-10-19'), -- Pago por PayPal de Hans Müller
(4, 2, 160.00, '2024-10-20'); -- Pago en efectivo de John Doe

-- Insertar más inventario
INSERT INTO inventory (id_product, stock, last_update) VALUES 
(3, 5, '2024-10-19'),  -- 5 Washing Machines en stock
(4, 50, '2024-10-19'), -- 50 Jeans en stock
(5, 15, '2024-10-19'), -- 15 Printers en stock
(6, 100, '2024-10-19'),-- 100 T-shirts en stock
(7, 20, '2024-10-19'); -- 20 Office Desks en stock
