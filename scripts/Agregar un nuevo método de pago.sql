use store;

DELIMITER $$
CREATE PROCEDURE add_payment_method(
    IN payment_method_name VARCHAR(50)
)
BEGIN
    -- Verificar si el método de pago ya existe
    IF EXISTS (
        SELECT 1 
        FROM payment_methods 
        WHERE name = payment_method_name
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El método de pago ya existe.';
    ELSE
        -- Insertar el nuevo método de pago
        INSERT INTO payment_methods (name)
        VALUES (payment_method_name);
    END IF;
END$$
DELIMITER ;

## procedimiento almacenado para agregar un nuevo método de pago a la base de datos: