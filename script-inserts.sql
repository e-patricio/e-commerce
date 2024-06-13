-- Inserts Clientes
INSERT INTO cliente (NOME, CPF, EMAIL) VALUES
('Aurora Celeste Amaral', '12345678900', 'aurora.celeste.amaral@ex.com');
INSERT INTO cliente (NOME, CPF, EMAIL) VALUES
('Dante Ícaro Monteiro', '23456789011', 'dante.icaro.monteiro@exe.com');
INSERT INTO cliente (NOME, CPF, EMAIL) VALUES
('Isadora Lívia Pereira', '34567890122', 'isadora.livia.pereira@ele.com');
INSERT INTO cliente (NOME, CPF, EMAIL) VALUES
('Valentina Sofia Barros', '45678901233', 'valentina.sofia.barros@ele.com');
INSERT INTO cliente (NOME, CPF, EMAIL) VALUES
('Leandro Tiago Fernandes', '56789012344', 'leandro.tiago.fernandes@emle.com');

-- Inserts endereços
INSERT INTO endereco (CEP, NUMERO, COMPLEMENTO, ID_CLIENTE) VALUES
('12345678', '100', 'Apto 101', 1);
INSERT INTO endereco (CEP, NUMERO, COMPLEMENTO, ID_CLIENTE) VALUES
('23456789', '236', NULL, 2);
INSERT INTO endereco (CEP, NUMERO, COMPLEMENTO, ID_CLIENTE) VALUES
('34567890', '350', 'Apto 202', 3);
INSERT INTO endereco (CEP, NUMERO, COMPLEMENTO, ID_CLIENTE) VALUES
('45678901', '407', 'Bloco B', 4);
INSERT INTO endereco (CEP, NUMERO, COMPLEMENTO, ID_CLIENTE) VALUES
('56789012', '21', 'Ap 339 Bl D', 5);
INSERT INTO endereco (CEP, NUMERO, COMPLEMENTO, ID_CLIENTE) VALUES
('67890123', '60', 'Casa 2', 1);
INSERT INTO endereco (CEP, NUMERO, COMPLEMENTO, ID_CLIENTE) VALUES
('78901234', '7', 'Ap 404 Bloco 2', 2);
INSERT INTO endereco (CEP, NUMERO, COMPLEMENTO, ID_CLIENTE) VALUES
('89012345', '88', 'Ap 201 Bloco C', 5);

-- Inserts categorias
INSERT INTO categoria (nome) VALUES ('Casa e Cozinha');
INSERT INTO categoria (nome) VALUES ('Informática');
INSERT INTO categoria (nome) VALUES ('Papelaria e Escritório');

-- Produtos da categoria 'Casa e Cozinha' 
INSERT INTO produto (NOME, PRECO, ID_CATEGORIA) VALUES ('Panela de Pressão', 199.90, 1);
INSERT INTO produto (NOME, PRECO, ID_CATEGORIA) VALUES ('Jogo de Talheres', 89.99, 1);
INSERT INTO produto (NOME, PRECO, ID_CATEGORIA) VALUES ('Liquidificador', 129.90, 1);
INSERT INTO produto (NOME, PRECO, ID_CATEGORIA) VALUES ('Faqueiro Inox', 249.90, 1);

-- Produtos da categoria 'Informática' 
INSERT INTO produto (NOME, PRECO, ID_CATEGORIA) VALUES ('Notebook', 3599.90, 2);
INSERT INTO produto (NOME, PRECO, ID_CATEGORIA) VALUES ('Mouse Gamer', 149.90, 2);
INSERT INTO produto (NOME, PRECO, ID_CATEGORIA) VALUES ('Teclado Mecânico', 299.90, 2);
INSERT INTO produto (NOME, PRECO, ID_CATEGORIA) VALUES ('Monitor 24"', 899.90, 2);

-- Produtos da categoria 'Papelaria e Escritório' 
INSERT INTO produto (NOME, PRECO, ID_CATEGORIA) VALUES ('Caderno Universitário', 19.90, 3);
INSERT INTO produto (NOME, PRECO, ID_CATEGORIA) VALUES ('Caneta Esferográfica', 2.99, 3);
INSERT INTO produto (NOME, PRECO, ID_CATEGORIA) VALUES ('Agenda 2024', 39.90, 3);
INSERT INTO produto (NOME, PRECO, ID_CATEGORIA) VALUES ('Grampeador', 25.90, 3);

-- Inserts transportadoras
INSERT INTO transportadora (NOME, EMAIL) VALUES ('Transporte Águia Dourada', 'info@aguiadourada.com');
INSERT INTO transportadora (NOME, EMAIL) VALUES ('Entrega Expressa', 'suporte@entregaexpressa.com');

-- Inserts pedidos
INSERT INTO pedido (DATA_HORA, FORMA_PGTO, ID_CLIENTE, ID_ENDERECO) VALUES
(TO_TIMESTAMP('2024-01-01 10:15:30','YYYY-MM-DD HH24:MI:SS'), 'CC', 1, 1);
INSERT INTO pedido (DATA_HORA, FORMA_PGTO, ID_CLIENTE, ID_ENDERECO) VALUES
(TO_TIMESTAMP('2024-01-15 14:20:45','YYYY-MM-DD HH24:MI:SS'), 'BO', 2, 2);
INSERT INTO pedido (DATA_HORA, FORMA_PGTO, ID_CLIENTE, ID_ENDERECO) VALUES
(TO_TIMESTAMP('2024-02-17 16:35:50','YYYY-MM-DD HH24:MI:SS'), 'PX', 3, 3);
INSERT INTO pedido (DATA_HORA, FORMA_PGTO, ID_CLIENTE, ID_ENDERECO) VALUES
(TO_TIMESTAMP('2024-03-04 11:45:30','YYYY-MM-DD HH24:MI:SS'), 'CD', 4, 4);
INSERT INTO pedido (DATA_HORA, FORMA_PGTO, ID_CLIENTE, ID_ENDERECO) VALUES
(TO_TIMESTAMP('2024-03-05 09:10:25','YYYY-MM-DD HH24:MI:SS'), 'PX', 5, 5);
INSERT INTO pedido (DATA_HORA, FORMA_PGTO, ID_CLIENTE, ID_ENDERECO) VALUES
(TO_TIMESTAMP('2024-03-06 17:25:30','YYYY-MM-DD HH24:MI:SS'), 'CC', 1, 6);
INSERT INTO pedido (DATA_HORA, FORMA_PGTO, ID_CLIENTE, ID_ENDERECO) VALUES
(TO_TIMESTAMP('2024-04-20 12:50:40','YYYY-MM-DD HH24:MI:SS'), 'BO', 2, 7);
INSERT INTO pedido (DATA_HORA, FORMA_PGTO, ID_CLIENTE, ID_ENDERECO) VALUES
(TO_TIMESTAMP('2024-04-26 18:15:20','YYYY-MM-DD HH24:MI:SS'), 'PX', 3, 3);
INSERT INTO pedido (DATA_HORA, FORMA_PGTO, ID_CLIENTE, ID_ENDERECO) VALUES
(TO_TIMESTAMP('2024-05-01 15:30:55','YYYY-MM-DD HH24:MI:SS'), 'CD', 4, 4);
INSERT INTO pedido (DATA_HORA, FORMA_PGTO, ID_CLIENTE, ID_ENDERECO) VALUES
(TO_TIMESTAMP('2024-05-19 20:45:35','YYYY-MM-DD HH24:MI:SS'), 'CD', 5, 8);

-- Inserts itens
-- Itens do pedido 1
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (1, 1, 1, TO_DATE('09/01/24', 'DD/MM/YYYY'), 'ENTREGUE', 1);
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (1, 2, 2, TO_DATE('06/01/24', 'DD/MM/YYYY'), 'ENTREGUE', 2);
-- Itens do pedido 2
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (2, 3, 1, TO_DATE('20/01/24', 'DD/MM/YYYY'), 'ENTREGUE', 1);
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (2, 4, 1, TO_DATE('20/01/24', 'DD/MM/YYYY'), 'ENTREGUE', 1);
-- Itens do pedido 3
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (3, 9, 1, TO_DATE('26/02/24', 'DD/MM/YYYY'), 'ENTREGUE', 2);
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (3, 10, 2, TO_DATE('26/02/24', 'DD/MM/YYYY'), 'ENTREGUE', 2);
-- Itens do pedido 4
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (4, 11, 1, TO_DATE('12/03/24', 'DD/MM/YYYY'), 'ENTREGUE', 1);
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (4, 9, 1, TO_DATE('10/03/24', 'DD/MM/YYYY'), 'ENTREGUE', 2);
-- Itens do pedido 5
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (5, 6, 1, TO_DATE('11/03/24', 'DD/MM/YYYY'), 'ENTREGUE', 2);
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (5, 10, 5, TO_DATE('14/03/24', 'DD/MM/YYYY'), 'ENTREGUE', 1);
-- Itens do pedido 6
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (6, 6, 1, TO_DATE('17/03/24', 'DD/MM/YYYY'), 'ENTREGUE', 2);
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (6, 12, 1, TO_DATE('17/03/24', 'DD/MM/YYYY'), 'ENTREGUE', 2);
-- Itens do pedido 7
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (7, 7, 1, TO_DATE('01/05/24', 'DD/MM/YYYY'), 'ENTREGUE', 1);
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (7, 8, 1, TO_DATE('01/05/24', 'DD/MM/YYYY'), 'ENTREGUE', 1);
-- Itens do pedido 8
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (8, 5, 1, TO_DATE('10/05/24', 'DD/MM/YYYY'), 'ENTREGUE', 1);
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (8, 8, 2, TO_DATE('10/05/24', 'DD/MM/YYYY'), 'ENTREGUE', 1);
-- Itens do pedido 9
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (9, 5, 1, TO_DATE('15/05/24', 'DD/MM/YYYY'), 'ENTREGUE', 2);
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (9, 10, 1, TO_DATE('15/05/24', 'DD/MM/YYYY'), 'ENTREGUE', 2);
-- Itens do pedido 10
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (10,11, 1, TO_DATE('20/06/24', 'DD/MM/YYYY'), 'TRANSITO', 1);
INSERT INTO item (ID_PEDIDO, ID_PRODUTO, QUANTIDADE, DATA_ENTREGA, STATUS, ID_TRANSPORTADORA) VALUES (10, 7, 1, TO_DATE('20/06/24', 'DD/MM/YYYY'), 'TRANSITO', 2);

-- Inserts avaliações
-- Panela[1]
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (4, 'Amei! Só que chegou atrasado... culpa do correio.', 1, 1);
-- Talheres[2]
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (4, 'Mais ou menos. Esperava mais pelo preço.', 1, 1);
-- Liquidificador[3]
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (4, 'Gostei, mas poderia ser mais barato.', 2, 3);
-- Faqueiro[4]
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (4, 'Bom produto, mas a embalagem estava rasgada.', 2, 4);
-- Notebook[5]
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (5, 'Perfeito! Já indiquei para os amigos.', 3, 5);
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (5, 'OTMIO CONSIGO JOGAR GENSHIN O DIA TOODO:) )', 4, 5);
-- Mouse Gamer[6]
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (5, 'Fantástico! Minha avó adorou.', 1, 6);
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (2, 'Não gostei, mas o meu gato adorou...', 5, 6);
-- Teclado Mecânico[7]
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (3, 'Chegou rápido, lindo, siplesmente INCRÍVEL', 2, 7);
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (5, 'Muito bonito, funciona perfeitamente', 5, 7);
-- Monitor[8]
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (5, 'Simplesmente incrível! Até meu vizinho quer um agora.', 2, 8);
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (3, 'É okay, nada de espetacular.', 3, 8);
-- Caderno[9]
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (1, 'Veio todo amassado... Decepção total.', 3, 9);
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (5, 'Produto maravilhiso! Recomendo pra todo mundo.', 4, 9);
-- Caneta[10]
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (4, 'Bom, mas o manual veio em chinês.', 3, 10);
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (1, 'Detestei! Veio completamente diferente do anunciado.', 5, 10);
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (5, 'Escreve', 4, 10);
-- Agenda[11]
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (3, 'Horrivel! Não funcona de jeito nenhum.', 4, 11);
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (10, 'Muito bonito e organizado AMEEI', 5, 11);
-- Grampeador[12]
INSERT INTO AVALIACAO (nota, comentario, id_cliente, id_produto) VALUES (5, 'Superou minhas expectativas! Vou comprar mais.', 1, 12);
