use store; 
DELIMITER $$
CREATE PROCEDURE register_invoice(
    IN seller_id INT,
    IN customer_id INT,
    IN invoice_date DATE,
    INOUT invoice_id INT
)
BEGIN
    -- Inserta la nueva factura
    INSERT INTO invoices (id_seller, id_customer, date, total)
    VALUES (seller_id, customer_id, invoice_date, 0);

    -- Retorna el ID de la factura creada
    SET invoice_id = LAST_INSERT_ID();
END$$
DELIMITER ;

##Este procedimiento inserta una nueva factura y, opcionalmente, permite agregar productos asociados a esa factura.