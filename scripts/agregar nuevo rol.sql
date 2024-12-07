use store;
DELIMITER $$
CREATE PROCEDURE add_role(
    IN role_name VARCHAR(255)
)
BEGIN
    -- Verificar si el rol ya existe
    IF EXISTS (
        SELECT 1 
        FROM roles 
        WHERE name = role_name
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El rol ya existe.';
    ELSE
        -- Insertar el nuevo rol
        INSERT INTO roles (name)
        VALUES (role_name);
    END IF;
END$$
DELIMITER ;

##procedimiento almacenado para agregar un nuevo rol a la base de datos: