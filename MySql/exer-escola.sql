create database db_escola;

use db_escola;

-- Criei a tabela
create table tb_alunos(
id bigint(5) auto_increment,
nome varchar(255) not null,
idade int not null,
nota decimal(4, 2) not null,
curso varchar(255) not null,
primary key (id)
);

insert into tb_alunos (nome, idade, nota, curso) values ("Jane", 16, 9.5, "Literatura");
insert into tb_alunos (nome, idade, nota, curso) values ("Sutton", 17, 7, "Música");
insert into tb_alunos (nome, idade, nota, curso) values ("Maya", 15, 10, "Artes");
insert into tb_alunos (nome, idade, nota, curso) values ("Lucca", 18, 5.5, "Matemática");
insert into tb_alunos (nome, idade, nota, curso) values ("Ryan", 18, 6.5, "Espanhol");
insert into tb_alunos (nome, idade, nota, curso) values ("Louis", 19, 8.55, "História");
insert into tb_alunos (nome, idade, nota, curso) values ("Becky", 17, 4.5, "Portugues");
insert into tb_alunos (nome, idade, nota, curso) values ("Dylan", 16, 7.5, "Filosofia");

select * from tb_alunos;
select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;

update tb_alunos set nota = 6.97 where id = 8;