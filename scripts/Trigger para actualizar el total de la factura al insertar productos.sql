use store;
DELIMITER $$
CREATE TRIGGER update_invoice_total_after_insert
AFTER INSERT ON invoice_products
FOR EACH ROW
BEGIN
    UPDATE invoices
    SET total = (
        SELECT SUM(subtotal)
        FROM invoice_products
        WHERE id_invoice = NEW.id_invoice
    )
    WHERE id = NEW.id_invoice;
END$$
DELIMITER ;

##Este disparador recalcula el total de la factura cada vez que se inserta un producto en la tabla invoice_products.