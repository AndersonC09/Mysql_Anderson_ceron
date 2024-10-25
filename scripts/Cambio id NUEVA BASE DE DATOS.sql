USE store;

ALTER TABLE country
CHANGE COLUMN id_country id INT(11);

ALTER TABLE department
CHANGE COLUMN id_department id INT(11);

ALTER TABLE municipality
CHANGE COLUMN id_municipality id INT(11);

ALTER TABLE document_type
CHANGE COLUMN id_document_type id INT(11);

ALTER TABLE invoice
CHANGE COLUMN id_invoice id INT(11);

ALTER TABLE invoice_product
CHANGE COLUMN id_invoice_product id INT(11);

ALTER TABLE product
CHANGE COLUMN id_product id INT(11);

ALTER TABLE product_type
CHANGE COLUMN id_product_type id INT(11);

ALTER TABLE person
CHANGE COLUMN id_person id INT(11);

ALTER TABLE role
CHANGE COLUMN id_role id INT(11);


