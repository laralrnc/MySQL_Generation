-- banco de dados para e-commerce.

create database db_ecommerce;

use db_ecommerce;

create table tb_skincare
(
id bigint auto_increment,
nome varchar(255),
preco decimal(8,2),
marca varchar(255),
categoria varchar(255),
quantidade int,
primary key (id)
);

insert into tb_skincare(nome, preco, marca, categoria, quantidade)
values ("Bioré Aqua Rich Watery Essence FPS 50", 69.90, "Bioré", "Cuidados para pele", 1600);
insert into tb_skincare(nome, preco, marca, categoria, quantidade)
values ("Bioré UV Perfect Milk FPS 50", 57.90, "Bioré", "Cuidados para pele", 1800);
insert into tb_skincare(nome, preco, marca, categoria, quantidade)
values ("Bioré Make Up Remover", 68.90, "Bioré", "Maquiagem", 1900);
insert into tb_skincare(nome, preco, marca, categoria, quantidade)
values ("Bioré UV Perfect Face Milk FPS", 60.90, "Bioré", "Cuidados para pele", 2600);
insert into tb_skincare(nome, preco, marca, categoria, quantidade)
values ("Bioré UV Kids Pure Milk FPS 50", 99.90, "Bioré", "Corpo e banho", 5600);
insert into tb_skincare(nome, preco, marca, categoria, quantidade)
values ("Kit Clinique Smart Custom-Repair Moisturize Day and Night", 656.80, "Clinique", "Cuidados para pele", 1600);
insert into tb_skincare(nome, preco, marca, categoria, quantidade)
values ("Kit Clinique Anti-Blemish Solutions", 593.70, "Clinique", "Cuidados para pele", 1600);
insert into tb_skincare(nome, preco, marca, categoria, quantidade)
values ("Clinique Smart Clinical MD Resculpt", 534.90, "Clinique", "Cuidados para pele", 1600);

select * from tb_skincare where preco >= 500.00;
select * from tb_skincare where preco < 500.00;
select * from tb_skincare;

update tb_skincare set categoria = "Anti-idade" where id=9;
