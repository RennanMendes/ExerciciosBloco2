create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe varchar (50) not null,
genero enum ('M', 'F', 'O'),
primary key (id)
);

create table tb_personagem(
idPersonagem bigint auto_increment,
nome varchar (30) not null,
classePersonagem bigint not null,
nivel int not null,
ataque int (5) not null,
defesa int (5) not null,

primary key (idPersonagem),
foreign key (classePersonagem) references tb_classe (id)
);

insert into tb_classe (classe, genero) values ("Arqueira", 'F');
insert into tb_classe (classe, genero) values ("Mago", 'M');
insert into tb_classe (classe, genero) values ("Esqueleto", 'O');
insert into tb_classe (classe, genero) values ("Samurai", 'M');
insert into tb_classe (classe, genero) values ("Robo", 'O');

insert into tb_personagem (nome, classePersonagem, nivel, ataque, defesa) values ("Ju", 1, 1, 1000, 1000);
insert into tb_personagem (nome, classePersonagem, nivel, ataque, defesa) values ("Juju", 1, 2, 2000, 1500);
insert into tb_personagem (nome, classePersonagem, nivel, ataque, defesa) values ("Gandalf", 2, 1, 3000, 2000);
insert into tb_personagem (nome, classePersonagem, nivel, ataque, defesa) values ("Mestre dos Magos", 2, 2, 5000, 3500);
insert into tb_personagem (nome, classePersonagem, nivel, ataque, defesa) values ("Puro osso", 3, 1, 1500, 1000);
insert into tb_personagem (nome, classePersonagem, nivel, ataque, defesa) values ("Ossos da morte", 3, 2, 2500, 1500);
insert into tb_personagem (nome, classePersonagem, nivel, ataque, defesa) values ("Ryu", 4, 1, 5000, 3000);
insert into tb_personagem (nome, classePersonagem, nivel, ataque, defesa) values ("Pekka", 4, 2, 6000, 4000);
insert into tb_personagem (nome, classePersonagem, nivel, ataque, defesa) values ("Ultron", 5, 1, 10000, 4000);
insert into tb_personagem (nome, classePersonagem, nivel, ataque, defesa) values ("Visão", 5, 2, 15000, 6000);

SELECT * from tb_personagem where ataque > 2000;
SELECT * from tb_personagem where defesa > 1000 and defesa < 2000;
SELECT * from tb_personagem where nome like "%p%";

SELECT * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classePersonagem;
SELECT * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classePersonagem where tb_personagem.classePersonagem = 2;