create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(150) not null, 
ativo boolean not null,
primary key (id)
);

insert tb_categoria (tipo, ativo) values ("Hidráulico",true);
insert tb_categoria (tipo, ativo) values ("Elétrico",true);
insert tb_categoria (tipo, ativo) values ("Reforma",true);
insert tb_categoria (tipo, ativo) values ("Decoração",true);
insert tb_categoria (tipo, ativo) values ("Ferramentas",true);

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
nome varchar(100) not null,
preco decimal(6, 2) not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Fusível", 40.00, 30, 2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Tubos", 83.99, 25, 1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Pisos", 39.90, 30, 3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Papel de Parede", 150.00, 40, 4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Martelo", 63.30, 35, 5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cortinas", 399.90, 20, 4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Fios e cabos", 25.00, 50, 2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Presas Hidráulicas", 20.00, 10, 1);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3 and 60 order by preco;

select * from tb_produtos where nome like "%C%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 4;