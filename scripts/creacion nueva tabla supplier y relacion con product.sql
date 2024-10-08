CREATE TABLE supplier (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(100),
    phone VARCHAR(20)
);


ALTER TABLE product
ADD COLUMN idsupplier INT;


ALTER TABLE product
ADD CONSTRAINT fk_product_supplier
FOREIGN KEY (idsupplier) REFERENCES supplier(id);
