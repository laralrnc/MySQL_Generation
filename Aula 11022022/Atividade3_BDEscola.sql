-- Banco de dados para uma escola

create database db_escola;

use db_escola;

create table tb_estudantes
(
id bigint auto_increment,
nome varchar(255),
turma varchar(255),
nota decimal(8,2),
periodo varchar(255),
materias int,
primary key (id)
);

insert into tb_estudantes(nome, turma, nota, periodo, materias)
values ("João Lourenço", "84624483A", 8.5, "Manhã", "8");
insert into tb_estudantes(nome, turma, nota, periodo, materias)
values ("Maria Lourenço", "84624483B", 3.5, "Manhã", "8");
insert into tb_estudantes(nome, turma, nota, periodo, materias) 
values ("Júlia Lourenço", "84624483C", 8.5, "Manhã", "8");
insert into tb_estudantes(nome, turma, nota, periodo, materias) 
values ("Paula Lourenço", "84624483D", 9.5, "Manhã", "8");
insert into tb_estudantes(nome, turma, nota, periodo, materias)
values ("Pedro Lourenço", "84624483E", 1.5, "Manhã", "8");
insert into tb_estudantes(nome, turma, nota, periodo, materias)
values ("Pedro Lourenço", "84624483F", 6.5, "Manhã", "8");
insert into tb_estudantes(nome, turma, nota, periodo, materias)
values ("Pedro Lourenço", "84624483G", 5.5, "Manhã", "8");
insert into tb_estudantes(nome, turma, nota, periodo, materias)
values ("Pedro Lourenço", "84624483H", 4.5, "Manhã", "8");

select * from tb_estudantes;
select * from tb_estudantes where nota <= 7.0;
select * from tb_estudantes where nota > 7.0;

update tb_estudantes set turma = "84624483Z" where id = 8;
