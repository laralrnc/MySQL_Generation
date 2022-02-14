create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria
(
id bigint auto_increment,
area varchar(255),
primary key (id)
);

insert into tb_categoria(area) values ("Administração");
insert into tb_categoria(area) values ("Contabilidade e Finanças");
insert into tb_categoria(area) values ("Educação");
insert into tb_categoria(area) values ("Tecnologia");
insert into tb_categoria(area) values ("Desenvolvimento Pessoal e Profissional");

create table tb_produtos
(
id bigint auto_increment,
nome varchar(255),
valor decimal(8,2),
horas int,
nivel varchar(255),
id_area bigint,
primary key (id),
FOREIGN KEY (id_area) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome,valor,horas,nivel,id_area) 
values ("Empreendedorismo e inovação", 140.00, 12, "Iniciante", 1);
insert into tb_produtos (nome,valor,horas,nivel,id_area) 
values ("Análise de balanços", 40.00, 20, "Intermediário", 2);
insert into tb_produtos (nome,valor,horas,nivel,id_area) 
values ("Biologia: Alimentação e saúde", 1.00, 3, "Iniciante", 3);
insert into tb_produtos (nome,valor,horas,nivel,id_area) 
values ("Administrando Banco de Dados", 150.00, 15, "Avançado", 4);
insert into tb_produtos (nome,valor,horas,nivel,id_area) 
values ("Aprendendo na Web", 140.00, 12, "Iniciante", 5);


