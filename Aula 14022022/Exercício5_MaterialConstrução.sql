create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria
(
id bigint auto_increment,
descricao varchar(255),
entrega boolean not null,
primary key (id)
);

insert into tb_categoria(descricao, entrega)
values("Isolamento Térmico e Acústico", true);
insert into tb_categoria(descricao, entrega)
values("Impermeabilizantes", true);
insert into tb_categoria(descricao, entrega)
values("Fossa Séptica Biodigestor", true);
insert into tb_categoria(descricao, entrega)
values("Estruturas Pré-Moldadas", true);
insert into tb_categoria(descricao, entrega)
values("Equipamentos para Construção", true);

create table tb_produtos
(
id bigint auto_increment,
nome varchar(255),
preco decimal(8,2),
marca varchar(255),
siteFrabricante varchar(255),
uso varchar(255),
id_descricao bigint,
primary key (id),
FOREIGN KEY (id_descricao) REFERENCES tb_categoria (id)
);

insert into tb_produtos(nome, preco, marca, siteFrabricante, uso, id_descricao)
values("Rolo Lã de Vidro WF 4+ 1,20x12,50mx50mm Isover", 139.90, "Isover", "www.isover.com.br", "Forro e Parede", 1);
insert into tb_produtos(nome, preco, marca, siteFrabricante, uso, id_descricao)
values("Rolo de Lã de Rocha 4,8m² 1,2x4mx50mm Biolã", 99.90, "Biolã", "www.biola.com.br", "Forro e Parede", 1);
insert into tb_produtos(nome, preco, marca, siteFrabricante, uso, id_descricao)
values("Manta Líquida Vedapren 18L Vedacit", 359.90, "Vedacit", 
"www.vedacit.com.br/proteja", "Lajes com tráfego de pessoas, floreiras, áreas molhadas e molháveis.", 2);
insert into tb_produtos(nome, preco, marca, siteFrabricante, uso, id_descricao)
values("Manta Líquida Elastment Cimento Elástico 20kg Cinza Drylevis", 569.90, 
"Drylevis", "www.drylevis.com.br", "Piscinas, banheiros, saunas, caixas d’água", 2);
insert into tb_produtos(nome, preco, marca, siteFrabricante, uso, id_descricao)
values("Fossa Séptica Biodigestor 500L 1,44mx0,95cm Azul Polietileno Fortlev", 1598.90, "Fortlev", 
"www.fortlev.com.br", "Peça única para tratamento de esgoto do tipo domiciliar.", 3);
insert into tb_produtos(nome, preco, marca, siteFrabricante, uso, id_descricao)
values("Fossa Séptica Biodigestor 1.300L Fundo Cônico Polietileno Acqualimp", 2699.90, 
"Acqualimp", "www.acqualimp.com", 
"Tratamento de afluentes sanitários em residências, chácaras, sítios, fazendas e escritórios.", 3);
insert into tb_produtos(nome, preco, marca, siteFrabricante, uso, id_descricao)
values("Isopor H10 1mx30cmx10cm Lajes Masteo", 18.79, "Lajes Masteo", 
"www.lajesmasteo.com.br", "Placas de Isopor para lajes TR12. Material de enchimento, sem função estrutural.", 4);
insert into tb_produtos(nome, preco, marca, siteFrabricante, uso, id_descricao)
values("Viga Treliçada 3mx13cmx3cm Lajes Masteo", 53.90, 
"Lajes Masteo", "www.lajesmasteo.com.br", 
"Placas de Isopor para lajes TR08. Material de enchimento, sem função estrutural.", 4);
insert into tb_produtos(nome, preco, marca, siteFrabricante, uso, id_descricao)
values("Carrinho de Mão 50L até 100kg Azulão Aço Carbono Tramontina", 243.90, "Tramontina", 
"www.tramontina.com.br", "A calibragem do pneu varia de acordo com a carga dentro da caçamba.", 5);
insert into tb_produtos(nome, preco, marca, siteFrabricante, uso, id_descricao)
values("Carrinho de Mão 65L até 120kg Extraforte Aço Carbono Tramontina", 374.90, 
"Tramontina", "www.tramontina.com.br", 
"A calibragem do pneu varia de acordo com a carga dentro da caçamba.", 5);

