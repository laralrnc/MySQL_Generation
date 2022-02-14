create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria
(
id bigint auto_increment,
descricao varchar(255),
forncedor varchar(255),
primary key (id)
);

insert into tb_categoria(descricao,fornecedor)
values("Fruta", "Fornecedor de Frutas");
insert into tb_categoria(descricao,fornecedor)
values("Verduras", "Fornecedor de Verduras");
insert into tb_categoria(descricao,fornecedor)
values("Legumes", "Fornecedor de Legumes");
insert into tb_categoria(descricao,fornecedor)
values("Folhas", "Fornecedor de Folhas");
insert into tb_categoria(descricao,fornecedor)
values("Temperos", "Fornecedor de Temperos");

create table tb_produtos
(
id bigint auto_increment,
nome varchar(255),
preco decimal(8,2),
estoque int,
organico boolean not null,
id_descricao bigint,
primary key (id),
FOREIGN KEY (id_descricao) REFERENCES tb_categoria (id)
);

insert into tb_produtos(nome,preco,estoque,organico,id_descricao)
values("Maçã", 1.50, 1800, false,1);
insert into tb_produtos(nome,preco,estoque,organico,id_descricao)
values("Banana", 6.50, 1800, false,1);
insert into tb_produtos(nome,preco,estoque,organico,id_descricao)
values("Brócolis", 8.50, 2000, false,2);
insert into tb_produtos(nome,preco,estoque,organico,id_descricao)
values("Rabanete", 9.50, 2800, false,2);
insert into tb_produtos(nome,preco,estoque,organico,id_descricao)
values("Abóbora", 12.50, 2000, false,3);
insert into tb_produtos(nome,preco,estoque,organico,id_descricao)
values("Berinjela", 75.50, 9800, false,3);
insert into tb_produtos(nome,preco,estoque,organico,id_descricao)
values("Alface", 12.50, 78, true,4);
insert into tb_produtos(nome,preco,estoque,organico,id_descricao)
values("Couve manteiga", 75.50, 45, true,4);
insert into tb_produtos(nome,preco,estoque,organico,id_descricao)
values("Pimenta do reino", 12.50, 78, false,5);
insert into tb_produtos(nome,preco,estoque,organico,id_descricao)
values("Tomilho", 0.50, 45, false,5);



