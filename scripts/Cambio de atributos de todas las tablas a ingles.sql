ALTER TABLE store.customer
CHANGE COLUMN idcliente idcustomer INT,
CHANGE COLUMN idtipo_documento iddocument_type INT,
CHANGE COLUMN documento document VARCHAR(30),
CHANGE COLUMN nombre name VARCHAR(30),
CHANGE COLUMN apellido surname VARCHAR(30),
CHANGE COLUMN idmunicipio idmunicipality INT;

ALTER TABLE store.seller
CHANGE COLUMN idvendedor idseller INT,
CHANGE COLUMN idtipo_documento iddocument_type INT,
CHANGE COLUMN documento document VARCHAR(30),
CHANGE COLUMN nombre name VARCHAR(30),
CHANGE COLUMN apellido surname VARCHAR(30),
CHANGE COLUMN idmunicipio idmunicipality INT,
CHANGE COLUMN nacimiento birthdate DATE;

ALTER TABLE store.department
CHANGE COLUMN iddepartamento iddepartment INT,
CHANGE COLUMN departamento department VARCHAR(30),
CHANGE COLUMN idpais idcountry INT;

ALTER TABLE store.country
CHANGE COLUMN idpais idcountry INT,
CHANGE COLUMN pais country VARCHAR(30);

ALTER TABLE store.document_type
CHANGE COLUMN idtipo_documento iddocument_type INT,
CHANGE COLUMN tipo_documento document_type VARCHAR(30);

ALTER TABLE store.invoice
CHANGE COLUMN idfactura idinvoice INT,
CHANGE COLUMN fecha date DATE,
CHANGE COLUMN idvendedor idseller INT,
CHANGE COLUMN idcliente idcustomer INT;

ALTER TABLE store.invoice_product
CHANGE COLUMN idfactura_producto idinvoice_product INT,
CHANGE COLUMN cantidad quantity INT,
CHANGE COLUMN idproducto idproduct INT,
CHANGE COLUMN idfactura idinvoice INT;

ALTER TABLE store.municipality
CHANGE COLUMN idmunicipio idmunicipality INT,
CHANGE COLUMN municipio municipality VARCHAR(30),
CHANGE COLUMN iddepartamento iddepartment INT;

ALTER TABLE store.product
CHANGE COLUMN idproducto idproduct INT,
CHANGE COLUMN producto product VARCHAR(30),
CHANGE COLUMN costo cost INT,
CHANGE COLUMN idtipo_producto idproduct_type INT;

ALTER TABLE store.product_type
CHANGE COLUMN idtipo_producto idproduct_type INT,
CHANGE COLUMN tipo_producto product_type VARCHAR(30);
