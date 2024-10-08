CREATE TABLE supplier_product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idsupplier INT NOT NULL,
    idproduct INT NOT NULL,
    FOREIGN KEY (idsupplier) REFERENCES supplier(id),
    FOREIGN KEY (idproduct) REFERENCES product(id)
);
