create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(100) not null, 
ativo boolean not null,
primary key (id)
);

insert tb_categoria (tipo, ativo) values ("Java",true);
insert tb_categoria (tipo, ativo) values ("C",true);
insert tb_categoria (tipo, ativo) values ("Lógica de Programação",true);
insert tb_categoria (tipo, ativo) values ("Python",true);
insert tb_categoria (tipo, ativo) values ("Git e Github",true);

select * from tb_categoria;

create table tb_cursos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(6, 2) not null,
vagas int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_cursos (nome, preco, vagas, categoria_id) values ("Java Servlet: Fundamentos da programação web Java", 120.00, 30, 1);
insert tb_cursos (nome, preco, vagas, categoria_id) values ("Minecraft: Estruturas lógicas com redstone", 59.99, 25, 3);
insert tb_cursos (nome, preco, vagas, categoria_id) values ("Python: Trabalhando com I/O", 99.90, 30, 4);
insert tb_cursos (nome, preco, vagas, categoria_id) values ("C II: Avançando na linguagem", 150.00, 40, 2);
insert tb_cursos (nome, preco, vagas, categoria_id) values ("Curso Git e Github: Controle e compartilhe seu código", 63.30, 35, 5);
insert tb_cursos (nome, preco, vagas, categoria_id) values ("Java Polimorfismo: Entenda herança e interfaces", 299.90, 20, 1);
insert tb_cursos (nome, preco, vagas, categoria_id) values ("Python para Data Science: Primeiros passos", 55.00, 50, 2);
insert tb_cursos (nome, preco, vagas, categoria_id) values ("C III: Recursos avançados da linguagem", 75.00, 10, 2);

select * from tb_cursos;

select * from tb_cursos where preco > 50.00;

select * from tb_cursos where preco between 3 and 60 order by preco;

select * from tb_cursos where nome like "%J%";

select * from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.categoria_id;

select * from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.categoria_id where tb_categoria.id = 5;
