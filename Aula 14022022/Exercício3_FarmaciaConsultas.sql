use db_farmacia_do_bem;

-- exibe dados da tabela
select * from tb_categoria;
select * from tb_produto;

-- deletando dados da tabela
delete from tb_produto where id=2;

-- mudando o atributo receita para entrega
alter table tb_categoria change receita entrega VARCHAR(255);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco > 3 and preco < 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produto where nome like "B%";
select * from tb_produto where nome like "R%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select tb_produto.id, nome, preco, marca, receita, entrega, descricao from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
-- os produtos que são cosméticos).
 select nome, preco, marca, receita, entrega, descricao from tb_produto 
 inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria where descricao = "Medicamentos";
 
