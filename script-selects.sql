-- Selects
-- Media das avaliações de cada produto e seu preço 
Select avg(nota) as Media_Nota, p.nome, p.preco 
from avaliacao a 
join produto p  on a.id_produto = p.id 
group by p.nome, p.preco order by p.preco desc;

-- Media das avaliações e dos preços por categoria
Select avg(a.nota) as Media_Categoria, c.nome, avg(p.preco) as Media_Precos
from avaliacao a
join produto p on p.id = a.id_produto
join categoria c on c. id = p.id_categoria
group by c.nome;

-- Avaliações e produtos 
Select a.nota, a.comentario, p.nome as Produto, p.preco, c.nome as Categoria
from avaliacao a
join produto p on p.id = a.id_produto
join categoria c on c.id = p.id_categoria;

-- 5 Produtos mais vendidos
Select count(i.id_produto) as QTD_Vendidos, p.nome
from item i
inner join produto p on p.id = i.id_produto 
group by p.nome
order by QTD_Vendidos desc
fetch first 5 rows only;
