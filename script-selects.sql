-- Selects
-- Media das avaliações de cada produto e seu preço 
SELECT p.nome AS Produto, ROUND(avg(nota), 1) AS Media_Nota, p.preco 
FROM avaliacao a 
JOIN produto p  on a.id_produto = p.id 
GROUP BY p.nome, p.preco order by p.preco desc;

-- Media das avaliações e dos preços por categoria
SELECT c.nome AS Categoria, ROUND(avg(a.nota), 1) as Media_Avaliacoes, ROUND(avg(p.preco), 1) as Media_Precos
FROM avaliacao a
JOIN produto p on p.id = a.id_produto
JOIN categoria c on c. id = p.id_categoria
GROUP BY c.nome;

-- Avaliações e produtos 
SELECT a.comentario, a.nota, p.nome as Produto, p.preco, c.nome as Categoria
FROM avaliacao a
JOIN produto p on p.id = a.id_produto
JOIN categoria c on c.id = p.id_categoria;

-- 5 Produtos mais vendidos
SELECT p.nome, count(i.id_produto) AS QTD_Vendidos
FROM item i
INNER JOIN produto p on p.id = i.id_produto 
GROUP BY p.nome
ORDER BY QTD_Vendidos desc
FETCH FIRST 5 ROWS ONLY;
