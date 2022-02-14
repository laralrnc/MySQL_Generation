create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria
(
id bigint auto_increment,
descricao varchar(255),
entrega boolean not null,
primary key (id)
);

insert into tb_categoria(descricao, entrega)
values("Medicamentos", false);
insert into tb_categoria(descricao, entrega)
values("Beleza e higiene", true);
insert into tb_categoria(descricao, entrega)
values("Saúde e bem estar", true);
insert into tb_categoria(descricao, entrega)
values("Home Care", true);
insert into tb_categoria(descricao, entrega)
values("Mamãe e bebê", true);

create table tb_produto
(
id bigint auto_increment,
nome varchar(255),
preco decimal(8,2),
marca varchar(255),
receita boolean not null,
id_categoria bigint,
primary key (id),
FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id)
);

insert into tb_produto(nome,preco,marca,receita,id_categoria)
values("Forxiga 10mg 30 Comprimidos Revestidos", 129.67, "Astrazeneca", false, 1);
insert into tb_produto(nome,preco,marca,receita,id_categoria)
values("Venvanse 30mg Shire 28 Cápsulas", 273.14, "Shire", true, 1);
insert into tb_produto(nome,preco,marca,receita,id_categoria)
values("Leave In Tratamento Elseve L'Oréal Paris Cicatri Renov 50ml", 10.98, "Elsève", false, 2);
insert into tb_produto(nome,preco,marca,receita,id_categoria)
values("Hastes Flexíveis Cotonetes 75 Unidades", 3.69, "Johnson's", false, 2);
insert into tb_produto(nome,preco,marca,receita,id_categoria)
values("Ogestan Gold Besins Healthcare 90 Cápsulas", 295.01, "Saúde E Bem Estar Besins Healthcare", false, 3);
insert into tb_produto(nome,preco,marca,receita,id_categoria)
values("Repelente Repelex Aerosol Suave 200ml", 19.39, "Repelex", false, 3);
insert into tb_produto(nome,preco,marca,receita,id_categoria)
values("Teste Rápido De Covid-19 Pambio Igge e Igm", 119.99, "Abbott", false, 4);
insert into tb_produto(nome,preco,marca,receita,id_categoria)
values("Soro Fisiológico Ever Care 500ml", 6.92, "EverCare", false, 4);
insert into tb_produto(nome,preco,marca,receita,id_categoria)
values("Kit Lenço Umedecido Huggies Puro e Natural 4 Unidades", 32.17, "Huggies", false, 5);
insert into tb_produto(nome,preco,marca,receita,id_categoria)
values("Algodão Quadrado Ever Care Baby 100 Unidades", 24.99, "EverCare", false, 5);