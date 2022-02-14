-- criando banco de dados 
create database db_quitanda;

-- especifica em qual banco a tabela será criada
use db_quitanda;

-- criando tabela
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal,
primary key (id)
);

-- inserindo dados na tabela
insert into tb_produtos(nome, quantidade, preco) 
values ("Maçã", 10, 1.99);
insert into tb_produtos(nome, quantidade, preco) 
values ("Manga", 30, 4.99);
insert into tb_produtos(nome, quantidade, preco) 
values ("Alface", 45, 0.99);
insert into tb_produtos(nome, quantidade, preco) 
values ("Repolho", 75, 0.45);
insert into tb_produtos(nome, quantidade, preco) 
values ("Cebola", 75, 2.45);

-- selecionando todos os itens da tabela (* seleciona todos)
select * from tb_produtos;
select nome from tb_produtos;
select nome, preco from tb_produtos;
select * from tb_produtos where preco > 1.99;
select * from tb_produtos where preco <  1.99;

-- modificando a estrutura dos dados tabela (adicionando as casas decimais para que o banco não arredonde o valor automaticamente e adicionando outra coluna)
alter table tb_produtos modify preco decimal(8,2);
alter table tb_produtos add descricao varchar(255);

-- atualizando dados da tabela
update tb_produtos set preco = 1.99 where id = 1;
update tb_produtos set descicao = "banana ouro";
-- desabilita o erro da atualização sem where
set SQL_SAFE_UPTADE  = 0;

-- deletando dados da tabela
delete from tb_produtos where id = 8;
-- deletando uma coluna inteira
alter table tb_produtos drop descricao;

