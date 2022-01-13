create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(

id bigint auto_increment,
nome varchar (70) not null,
preco decimal not null,
quantidade int not null,
disponivel boolean not null,

primary key (id)
);

SELECT * from tb_produtos;
insert into tb_produtos(nome, preco, quantidade, disponivel) values ("Computador", 4000.00, 10,true);
insert into tb_produtos(nome, preco, quantidade, disponivel) values ("Notebook", 6000.00, 20,true);
insert into tb_produtos(nome, preco, quantidade, disponivel) values ("Celular", 2500.00, 100,true);
insert into tb_produtos(nome, preco, quantidade, disponivel) values ("Monitor", 250.00, 6,true);
insert into tb_produtos(nome, preco, quantidade, disponivel) values ("Teclado", 100.00, 10,true);
insert into tb_produtos(nome, preco, quantidade, disponivel) values ("Mouse", 65.00, 10, true);
insert into tb_produtos(nome, preco, quantidade, disponivel) values ("HD Externo", 499.99, 30, true);
insert into tb_produtos(nome, preco, quantidade, disponivel) values ("CPU", 2600.00, 2, false);

truncate table tb_produtos;

SELECT * from tb_produtos where preco > 500;
SELECT * from tb_produtos where preco <500;

SELECT nome, preco from tb_produtos;

update tb_produtos set preco =2800.00 where id = 8;