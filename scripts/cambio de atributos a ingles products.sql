USE store;

ALTER TABLE product
CHANGE COLUMN idproducto id INT(11),
CHANGE COLUMN producto product VARCHAR(30),
CHANGE COLUMN costo cost INT(11),
CHANGE COLUMN idtipo_producto idproduct_type INT(11);
