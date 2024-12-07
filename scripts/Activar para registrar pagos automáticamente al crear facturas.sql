use store
DELIMITER $$
CREATE TRIGGER create_payment_on_invoice
AFTER INSERT ON invoices
FOR EACH ROW
BEGIN
    INSERT INTO payments (id_invoice, id_payment_method, amount, date)
    VALUES (NEW.id, 1, NEW.total, NOW());
END$$
DELIMITER ;


##Este trigger crea automáticamente un registro en la tabla paymentsal insertar una nueva factura en invoices, suponiendo que el pago inicial es el total de la factura.
## : Cambia id_payment_method(en este caso 1) al método de pago predeterminado que tengas configurado.