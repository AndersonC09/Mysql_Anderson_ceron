use store; 

DELIMITER //

CREATE TRIGGER update_last_update_on_new_invoice
AFTER INSERT ON invoices
FOR EACH ROW
BEGIN
    UPDATE stores
    SET last_update = NOW()
    WHERE id = NEW.id_seller;
END //

DELIMITER ;
