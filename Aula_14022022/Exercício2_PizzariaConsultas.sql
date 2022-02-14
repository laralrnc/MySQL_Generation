use db_pizzaria_legal;

-- apresenta todos os valores da tabela
select * from tb_pizza;

-- apresenta todos os valores da tabela
select * from tb_categoria;

-- produtos com valor menor que 45
select * from tb_pizza where preco > 45.00;

-- produtos com valores menos que 29 ou maior que 60
select * from tb_pizza where preco <=29 or preco >=60;

-- produtos que comecem com a letra C
select * from tb_pizza where nome like "C%";

-- criação de relação entre tabelas
select tb_pizza.id, nome, preco, ingredientes, tb_categoria.descricao, tb_categoria.diaPromo  from tb_pizza 
inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;

-- faça um select que traga todos os produtos de uma categoria especifica
select tb_pizza.id, nome, preco, tb_categoria.descricao  from tb_pizza 
inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id where tb_categoria.descricao = "Pizzas Doces";

-- atualização de dados pq escrevi quijo e não queijo
update tb_categoria set descricao = "Queijo" where id = 3;
