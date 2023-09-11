CREATE TABLE clientes (
codcliente INT(8)NOT NULL,
nomecliente VARCHAR(50)NOT NULL,
enderecocliente VARCHAR(40)NOT NULL,
cidade CHAR(2) NOT NULL,
cep INT(8) NOT NULL,
CHECK (cep > 1000),
PRIMARY KEY(codcliente)
);

CREATE TABLE produtos (
codproduto INT(8) NOT NULL,
descproduto VARCHAR(50) NOT NULL,
# pericivel BOOL NOT NULL,
validade DATE NULL,
detalhes VARCHAR (1000) NULL,
fotodoproduto BLOB NULL,
PRIMARY KEY codproduto,
 
);
