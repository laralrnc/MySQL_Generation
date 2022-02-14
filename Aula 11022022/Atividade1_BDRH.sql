-- banco de dados para serviço de um RH

create database db_RH;

use db_RH;

create table tb_funcionarios
(
id bigint auto_increment,
nome varchar(255),
salario decimal(8,2),
cargo varchar(255),
turno varchar(255),
dependentes varchar(255),
primary key (id)
);

insert into tb_funcionarios(nome, salario, cargo, turno, dependentes) 
values ("João Lourenço", 9000.00, "Jovem Aprendiz", "Manhã", "Não");
insert into tb_funcionarios(nome, salario, cargo, turno, dependentes) 
values ("Maria Lourenço", 900.00, "Jovem Aprendiz", "Manhã", "Não");
insert into tb_funcionarios(nome, salario, cargo, turno, dependentes) 
values ("Júlia Lourenço", 9500.00, "Jovem Aprendiz", "Manhã", "Não");
insert into tb_funcionarios(nome, salario, cargo, turno, dependentes) 
values ("Paula Lourenço", 700.00, "Jovem Aprendiz", "Manhã", "Não");
insert into tb_funcionarios(nome, salario, cargo, turno, dependentes) 
values ("Pedro Lourenço", 1000.00, "Jovem Aprendiz", "Manhã", "Não");

select * from tb_funcionarios where salario > 1000.00;
select * from tb_funcionarios where salario <= 1000.00;
select * from tb_funcionarios;

update tb_funcionarios set salario = 5000.00 where id=1;
