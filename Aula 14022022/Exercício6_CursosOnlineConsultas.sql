use db_cursoDaMinhaVida;

-- exibir todos os dados
select * from tb_produtos;
select * from tb_categoria;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produtos where valor > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produtos where valor between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra J.
select * from tb_produtos where nome like "%A%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select nome, valor, horas, nivel, area from tb_produtos inner join 
tb_categoria on tb_categoria.id = tb_produtos.id_area;

-- Faça um um select com Inner join entre tabela categoria e produto.
select nome, valor, horas, nivel, area from tb_produtos inner join 
tb_categoria on tb_categoria.id = tb_produtos.id_area where area = "Educação";
