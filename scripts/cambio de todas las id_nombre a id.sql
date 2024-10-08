USE store;

ALTER TABLE country
CHANGE COLUMN idcountry id INT(11);

ALTER TABLE customer
CHANGE COLUMN idcustomer id INT(11);

ALTER TABLE department
CHANGE COLUMN iddepartment id INT(11);

ALTER TABLE document_type
CHANGE COLUMN iddocument_type id INT(11);

ALTER TABLE invoice
CHANGE COLUMN idinvoice id INT(11);

ALTER TABLE invoice_product
CHANGE COLUMN idinvoice_product id INT(11);

ALTER TABLE municipality
CHANGE COLUMN idmunicipality id INT(11);

ALTER TABLE product_type
CHANGE COLUMN idproduct_type id INT(11);

ALTER TABLE seller
CHANGE COLUMN idseller id INT(11);