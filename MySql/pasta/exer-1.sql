create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint(5) auto_increment,
tipo varchar(255) not null,
lv bigint not null,
genero varchar(255) not null,
primary key (id)
);

insert tb_classes (tipo, lv, genero) values ("Feiticera", 8, "Feminino");
insert tb_classes (tipo, lv, genero) values ("Ninja", 6, "Feminino");
insert tb_classes (tipo, lv, genero) values ("Guerreira", 10, "Feminino");
insert tb_classes (tipo, lv, genero) values ("Arqueiro", 1, "Masculino");
insert tb_classes (tipo, lv, genero) values ("Campones", 5, "Masculino");

select * from tb_classes;

create table tb_personagens(
id bigint(5) auto_increment,
nome varchar(255) not null,
ataque bigint not null,
defesa bigint not null,
classes_id bigint,
primary key (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes (id)
);

insert tb_personagens (nome, ataque, defesa, classes_id) values ("Gamora", 3500, 2000, 3);
insert tb_personagens (nome, ataque, defesa, classes_id) values ("Viúva Negra", 4000, 3000, 3);
insert tb_personagens (nome, ataque, defesa, classes_id) values ("Robert", 2000, 1500, 5);
insert tb_personagens (nome, ataque, defesa, classes_id) values ("Richard", 2500, 2000, 4);
insert tb_personagens (nome, ataque, defesa, classes_id) values ("Maya", 5000, 3000, 2);
insert tb_personagens (nome, ataque, defesa, classes_id) values ("Scarlat", 8500, 7000, 1);
insert tb_personagens (nome, ataque, defesa, classes_id) values ("Liam", 1500, 2000, 5);
insert tb_personagens (nome, ataque, defesa, classes_id) values ("Arthur", 1000, 900, 5);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000 order by defesa;

select * from tb_personagens where nome like "%C%";

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classes_id;
    
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classes_id where tb_classes.id = 1;
