-- Selects
-- Media das avaliações de cada produto e seu preço 
SELECT p.nome AS Produto, ROUND(AVG(nota), 1) AS Media_Nota, p.preco 
FROM avaliacao a 
JOIN produto p ON a.id_produto = p.id 
GROUP BY p.nome, p.preco ORDER BY p.preco DESC;

-- Media das avaliações e dos preços por categoria
SELECT c.nome AS Categoria, ROUND(AVG(a.nota), 1) AS Media_Avaliacoes, ROUND(AVG(p.preco), 2) AS Media_Precos
FROM avaliacao a
JOIN produto p ON p.id = a.id_produto
JOIN categoria c ON c. id = p.id_categoria
GROUP BY c.nome;

-- Avaliações de todos os produtos 
SELECT a.comentario, a.nota, p.nome AS Produto, p.preco, c.nome as Categoria
FROM avaliacao a
JOIN produto p ON p.id = a.id_produto
JOIN categoria c ON c.id = p.id_categoria;

-- 5 Produtos mais vendidos
SELECT p.nome, SUM(i.quantidade) AS QTD_Vendidos
FROM item i
INNER JOIN produto p ON p.id = i.id_produto 
GROUP BY p.nome
ORDER BY QTD_Vendidos DESC
FETCH FIRST 5 ROWS ONLY;
