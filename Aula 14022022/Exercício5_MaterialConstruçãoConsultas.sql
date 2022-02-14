use db_construindo_a_nossa_vida;

-- exibir todos os dados
select * from tb_produtos;
select * from tb_categoria;

-- alterar dados da coluna // escrevi errado
alter table tb_produtos change siteFrabricante siteFabricante varchar(255);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produtos where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produtos where preco > 3 and preco < 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produtos where nome like "C%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select nome, preco, marca, siteFabricante, uso, descricao from tb_produtos inner join 
tb_categoria on tb_categoria.id = tb_produtos.id_descricao;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
-- os produtos que são da categoria hidráulica).
select nome, preco, marca, siteFabricante, uso, descricao from tb_produtos inner join 
tb_categoria on tb_categoria.id = tb_produtos.id_descricao where descricao = "Impermeabilizantes";