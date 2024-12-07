USE store;

DELIMITER //

CREATE PROCEDURE AddProduct(
    IN product_name VARCHAR(100),
    IN product_description TEXT,
    IN product_price DECIMAL(10,2),
    IN product_type_id INT
)
BEGIN
    INSERT INTO products (name, description, price, id_product_type)
    VALUES (product_name, product_description, product_price, product_type_id);
END //

DELIMITER ;
