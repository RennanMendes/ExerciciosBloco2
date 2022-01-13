create database db_escola;

use db_escola;

create table tb_estudante (
 
 id bigint auto_increment,
 nome varchar (30) not null,
 media decimal not null,
 turma int not null,
 aprovado boolean,

 primary key(id)
);

SELECT * from tb_estudante;

insert into tb_estudante (nome, media, turma, aprovado) values ("Rennan", 10.00, 43, true);
insert into tb_estudante (nome, media, turma, aprovado) values ("Matheus", 8.5, 40, true);
insert into tb_estudante (nome, media, turma, aprovado) values ("Rafael", 5, 40, false);
insert into tb_estudante (nome, media, turma, aprovado) values ("Jessica",9.5,43, true);
insert into tb_estudante (nome, media, turma, aprovado) values ("Heloisa",9.8,43, true);
insert into tb_estudante (nome, media, turma, aprovado) values ("Marianna", 7.5, 40, true);

ALTER table tb_estudante modify media decimal (4,2);
truncate table tb_estudante;

SELECT * from tb_estudante where media > 7;
SELECT * from tb_estudante where media < 7;

update tb_estudante set media = 6.5 where id=3;