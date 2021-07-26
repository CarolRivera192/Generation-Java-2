create database db_rh;

-- Usei o banco de dados
use db_rh;

-- Criei a tabela
create table tb_funcionaries(
id bigint(5) auto_increment,
nome varchar(255) not null,
cidade varchar(255) not null,
cargo varchar(255) not null,
salario decimal not null,
primary key (id)
);

-- Inseri Dados
insert into tb_funcionaries (nome, cidade, cargo, salario) values ("Nick", "São Paulo", "Estagiário", 1500);
insert into tb_funcionaries (nome, cidade, cargo, salario) values ("Adena", "São Caetano", "Fotografa", 10000);
insert into tb_funcionaries (nome, cidade, cargo, salario) values ("Kat", "Santo André", "Diretora das mídias sociais", 15000);
insert into tb_funcionaries (nome, cidade, cargo, salario) values ("Andrew", "Osasco", "Escritor", 8000);
insert into tb_funcionaries (nome, cidade, cargo, salario) values ("Richard", "Poa", "Assistente", 1800);

-- Retorne um dado da tabela
select * from tb_funcionaries;
select * from tb_funcionaries where salario > 2000;
select * from tb_funcionaries where salario < 2000;

-- Atualizar um dado da tabela
alter table tb_funcionaries modify salario decimal(7, 2);

-- Alterar Dados da Tabela
update tb_funcionaries set cidade = "São Bernardo" where id = 5;