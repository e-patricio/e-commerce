-- Drops na ordem certa
-- 1. table item;
-- 2. table avaliacao;
-- 3. table pedido;
-- 4. table transportadora;
-- 5. table produto;
-- 6. table categoria;
-- 7º. table endereco;
-- 8º. table cliente;

-- Create 'CATEGORIA'
CREATE TABLE CATEGORIA (
 id INT GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
 nome VARCHAR(100) NOT NULL
);
ALTER TABLE CATEGORIA ADD CONSTRAINT PK_CATEGORIA PRIMARY KEY (id);

-- Create 'CLIENTE'
CREATE TABLE CLIENTE (
 id INT GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
 nome VARCHAR(100) NOT NULL,
 cpf CHAR(11) NOT NULL,
 email VARCHAR(100) NOT NULL
);
ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE PRIMARY KEY (id);

-- Create 'ENDERECO'
CREATE TABLE ENDERECO (
 id INT GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
 cep CHAR(8) NOT NULL,
 numero INT NOT NULL,
 complemento VARCHAR(100),
 id_cliente INT NOT NULL
);
ALTER TABLE ENDERECO ADD CONSTRAINT PK_ENDERECO PRIMARY KEY (id, id_cliente);

-- Create 'ITEM'
CREATE TABLE ITEM (
 id INT GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
 id_pedido INT NOT NULL,
 id_produto INT NOT NULL,
 quantidade INT NOT NULL,
 data_entrega DATE NOT NULL,
 status VARCHAR(10) NOT NULL,
 id_transportadora INT NOT NULL
);
ALTER TABLE ITEM ADD CONSTRAINT PK_ITEM PRIMARY KEY (id);

-- Create 'PEDIDO'
CREATE TABLE PEDIDO (
 id INT GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
 data_hora TIMESTAMP NOT NULL,
 forma_pgto CHAR(2) NOT NULL,
 id_cliente INT NOT NULL,
 id_endereco INT NOT NULL
);
ALTER TABLE PEDIDO ADD CONSTRAINT PK_PEDIDO PRIMARY KEY (id);

-- Create 'PRODUTO'
CREATE TABLE PRODUTO (
 id INT GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
 nome VARCHAR(100) NOT NULL,
 preco DOUBLE PRECISION NOT NULL,
 id_categoria INT NOT NULL
);
ALTER TABLE PRODUTO ADD CONSTRAINT PK_PRODUTO PRIMARY KEY (id);

-- Create 'TRANSPORTADORA'
CREATE TABLE TRANSPORTADORA (
 id INT GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
 nome VARCHAR(100) NOT NULL,
 email VARCHAR(100) NOT NULL
);
ALTER TABLE TRANSPORTADORA ADD CONSTRAINT PK_TRANSPORTADORA PRIMARY KEY (id);

-- Create 'AVALIACAO'
CREATE TABLE AVALIACAO (
 id INT GENERATED BY DEFAULT ON NULL AS IDENTITY NOT NULL,
 nota INT NOT NULL,
 comentario VARCHAR(300),
 id_cliente INT NOT NULL,
 id_produto INT NOT NULL
);
ALTER TABLE AVALIACAO ADD CONSTRAINT PK_AVALIACAO PRIMARY KEY (id, id_cliente, id_produto);

-- Foreign Keys
ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_0 FOREIGN KEY (id_cliente) REFERENCES CLIENTE (id);

ALTER TABLE ITEM ADD CONSTRAINT FK_ITEM_0 FOREIGN KEY (id_pedido) REFERENCES PEDIDO (id);
ALTER TABLE ITEM ADD CONSTRAINT FK_ITEM_1 FOREIGN KEY (id_produto) REFERENCES PRODUTO (id);
ALTER TABLE ITEM ADD CONSTRAINT FK_ITEM_2 FOREIGN KEY (id_transportadora) REFERENCES TRANSPORTADORA (id);

ALTER TABLE PEDIDO ADD CONSTRAINT FK_PEDIDO_0 FOREIGN KEY (id_cliente) REFERENCES CLIENTE (id);
ALTER TABLE PEDIDO ADD CONSTRAINT FK_PEDIDO_1 FOREIGN KEY (id_endereco, id_cliente) REFERENCES ENDERECO (id, id_cliente);

ALTER TABLE PRODUTO ADD CONSTRAINT FK_PRODUTO_0 FOREIGN KEY (id_categoria) REFERENCES CATEGORIA (id);

ALTER TABLE AVALIACAO ADD CONSTRAINT FK_AVALIACAO_0 FOREIGN KEY (id_cliente) REFERENCES CLIENTE (id);
ALTER TABLE AVALIACAO ADD CONSTRAINT FK_AVALIACAO_1 FOREIGN KEY (id_produto) REFERENCES PRODUTO (id);