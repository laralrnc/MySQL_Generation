create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria
(
id bigint auto_increment,
descricao varchar(255),
diaPromo varchar(255),
primary key (id)
);

insert into tb_categoria(descricao, diaPromo)
values ("Aves", "SEG");
insert into tb_categoria(descricao, diaPromo)
values ("Peixes", "TER");
insert into tb_categoria(descricao, diaPromo)
values ("Queijos", "QUA");
insert into tb_categoria(descricao, diaPromo)
values ("Suínas", "QUI");
insert into tb_categoria(descricao, diaPromo)
values ("Vegetais", "SEX");
insert into tb_categoria(descricao, diaPromo)
values ("Pizzas Doces", "SAB");
insert into tb_categoria(descricao, diaPromo)
values ("Bovinas", "DOM");

create table tb_pizza
(
id bigint auto_increment,
nome varchar(255),
preco decimal(8,2),
ingredientes int,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza(nome,preco,ingredientes,categoria_id)
values("Chilena", 46.00, 4, 1);
insert into tb_pizza(nome,preco,ingredientes,categoria_id)
values("Paulista", 46.00, 3, 1);
insert into tb_pizza(nome,preco,ingredientes,categoria_id)
values("Cubana", 46.00, 5, 2);
insert into tb_pizza(nome,preco,ingredientes,categoria_id)
values("Camarão", 68.00, 4, 2);
insert into tb_pizza(nome,preco,ingredientes,categoria_id)
values("Quatro queijos especial", 51.00, 4, 3);
insert into tb_pizza(nome,preco,ingredientes,categoria_id)
values("Caipira", 42.00, 3, 3);
insert into tb_pizza(nome,preco,ingredientes,categoria_id)
values("Americana", 46.00, 6, 4);
insert into tb_pizza(nome,preco,ingredientes,categoria_id)
values("Baiana", 43.00, 4, 4);
insert into tb_pizza(nome,preco,ingredientes,categoria_id)
values("Carmelita", 45.00, 4, 5);
insert into tb_pizza(nome,preco,ingredientes,categoria_id)
values("Escarola", 42.00, 4, 5);
insert into tb_pizza(nome,preco,ingredientes,categoria_id)
values("Banana com chocolate", 37.00, 2, 6);
insert into tb_pizza(nome,preco,ingredientes,categoria_id)
values("Morango com chocolate", 41.00, 2, 6);
insert into tb_pizza(nome,preco,ingredientes,categoria_id)
values("Carne seca especial", 58.00, 5, 7);
insert into tb_pizza(nome,preco,ingredientes,categoria_id)
values("Filé mignon palha", 51.00, 5, 7);

