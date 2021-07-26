create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipoProduto varchar(150) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (tipoProduto, ativo) values ("Higiene bucal", true);
insert tb_categoria (tipoProduto, ativo) values ("Remédio", true);
insert tb_categoria (tipoProduto, ativo) values ("Cosmético", true);
insert tb_categoria (tipoProduto, ativo) values ("Higiene Pessoal", true);
insert tb_categoria (tipoProduto, ativo) values ("Produto de Bebê", true);

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

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Pampers", 55.00, 15, 5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Esmalte", 5.00, 20, 3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Escova de dente", 15.00, 10, 1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Rivotril", 20.00, 30, 2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Dorflex", 12.50, 12, 2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Desodorante", 14.99, 9, 4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Maquiagem", 60.00, 10, 3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Buscopan", 25.00, 17, 2);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3 and 60 order by preco;

select * from tb_produtos where nome like "%B%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 2;