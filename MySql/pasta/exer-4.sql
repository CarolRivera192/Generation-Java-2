create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
descricao varchar(100) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Frutas",true);
insert tb_categoria (descricao, ativo) values ("Verduras",true);
insert tb_categoria (descricao, ativo) values ("Vegetais",true);
insert tb_categoria (descricao, ativo) values ("Legumes",true);
insert tb_categoria (descricao, ativo) values ("Hortaliças",true);

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
nome varchar(100) not null,
preco decimal(4, 2) not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
foreign key(categoria_id) references tb_categoria (id)
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Morango", 15.00, 4, 1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Tomate", 22.90, 6, 4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Alface", 5.00, 5, 2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Repolho", 10.00, 8, 3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Uva", 50.00, 20, 1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Rabanete", 24.90, 8, 5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Brócolis", 17.90, 4, 3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Abobrinha", 19.90, 7, 2);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%C%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;

