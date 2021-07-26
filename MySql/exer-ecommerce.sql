create database db_ecommerce;

-- Usei o banco de dados
use db_ecommerce;

-- Criei a tabela
create table tb_produtos(
id bigint(5) auto_increment,
nome varchar(255) not null,
valor decimal(7,2) not null,
codigo int not null,
quantidade int not null,
primary key (id)
);

insert into tb_produtos (nome, valor, codigo, quantidade) values ("Notebook", 2500, 567432, 11);
insert into tb_produtos (nome, valor, codigo, quantidade) values ("Mac OS", 10000, 213590, 5);
insert into tb_produtos (nome, valor, codigo, quantidade) values ("Xiaomi", 800, 321567, 1);
insert into tb_produtos (nome, valor, codigo, quantidade) values ("JBS", 450, 890543, 8);
insert into tb_produtos (nome, valor, codigo, quantidade) values ("Alexa", 499, 845001, 10);
insert into tb_produtos (nome, valor, codigo, quantidade) values ("Iphone", 4000, 243908, 20);
insert into tb_produtos (nome, valor, codigo, quantidade) values ("Adaptador", 200, 297816, 5);
insert into tb_produtos (nome, valor, codigo, quantidade) values ("Teclado", 100, 765234, 8);

select * from tb_produtos;
select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;

update tb_produtos set quantidade = 2 where id = 8;