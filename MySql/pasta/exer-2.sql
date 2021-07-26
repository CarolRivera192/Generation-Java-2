create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint(5) auto_increment,
produto varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (produto, ativo) values ("Pizza Salgada",true);
insert tb_categoria (produto, ativo) values ("Pizza Doce",true);
insert tb_categoria (produto, ativo) values ("Pizza Salgada",true);
insert tb_categoria (produto, ativo) values ("Pizza Doce",true);
insert tb_categoria (produto, ativo) values ("Pizza Salgada",true);

select * from tb_categoria;

create table tb_pizzas(
id bigint(5) auto_increment,
nome varchar(255) not null,
preco decimal(4, 2) not null,
qtPedaco varchar(255) not null,
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_pizzas (nome, preco, qtPedaco, categoria_id) values ("Marguerita", 35.99, 8, 3);
insert tb_pizzas (nome, preco, qtPedaco, categoria_id) values ("Calabresa", 27.99, 8, 1);
insert tb_pizzas (nome, preco, qtPedaco, categoria_id) values ("Caipira", 49.90, 8, 5);
insert tb_pizzas (nome, preco, qtPedaco, categoria_id) values ("Portuguesa", 54.90, 10, 1);
insert tb_pizzas (nome, preco, qtPedaco, categoria_id) values ("Bauru", 47.90, 8, 5);
insert tb_pizzas (nome, preco, qtPedaco, categoria_id) values ("Romeo e Julieta", 47.99, 6, 2);
insert tb_pizzas (nome, preco, qtPedaco, categoria_id) values ("Sensação", 49.90, 8, 2);
insert tb_pizzas (nome, preco, qtPedaco, categoria_id) values ("Brigadeiro", 39.99, 4, 4);

select * from tb_pizzas;

select * from tb_pizzas where preco > 45.00;

select * from tb_pizzas where preco between 29 and 60 order by preco;

select * from tb_pizzas where nome like "%C%";

select * from tb_pizzas inner join tb_categoria on tb_categoria.id = tb_pizzas.categoria_id;
    
select * from tb_pizzas inner join tb_categoria on tb_categoria.id = tb_pizzas.categoria_id where tb_categoria.id = 1;