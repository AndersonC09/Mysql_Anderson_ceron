ALTER TABLE supplier
ADD COLUMN idmunicipality INT,
ADD COLUMN iddocument_type INT;


ALTER TABLE supplier
ADD CONSTRAINT fk_supplier_municipality
FOREIGN KEY (idmunicipality) REFERENCES municipality(id);

ALTER TABLE supplier
ADD CONSTRAINT fk_supplier_document_type
FOREIGN KEY (iddocument_type) REFERENCES document_type(id);
