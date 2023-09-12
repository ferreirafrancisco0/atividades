CREATE TABLE clientes (
codcliente INT(8)NOT NULL,
nomecliente VARCHAR(50)NOT NULL,
enderecocliente VARCHAR(40)NOT NULL,
estado CHAR (2) NOT NULL, 
cidade CHAR(2) NOT NULL,
cep INT(8) NOT NULL,
CHECK (cep > 1000),
PRIMARY KEY(codcliente)
);

CREATE TABLE produtos (
codproduto INT(8) NOT NULL,
descproduto VARCHAR(50) NOT NULL,
pericivel BOOLEAN NOT NULL,
validade DATE NOT NULL,
detalhes VARCHAR(1000),
fotodoproduto BLOB,
PRIMARY KEY (codproduto)
);


CREATE TABLE vendas (
codvenda INT (8) NOT NULL,
codcliente INT (8) NOT NULL,
PRIMARY KEY (codvenda, codcliente),
FOREIGN KEY (codcliente) REFERENCES clientes(codcliente)
);

CREATE TABLE produtos_venda (
codvenda INT(8) NOT NULL,
codcliente INT(8) NOT NULL,
codproduto INT(8) NOT NULL,
quant DECIMAL(10, 3) NOT NULL,
PRIMARY KEY (codvenda, codcliente, codproduto),
CHECK (quant > 0),
FOREIGN KEY (codvenda, codcliente) REFERENCES vendas(codvenda, codcliente),
FOREIGN KEY (codproduto) REFERENCES produtos(codproduto)
);

