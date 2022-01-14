create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho enum ("Pequena", "Media", "Grande") not null,
borda varchar (20) not null,

primary key (id)
);

create table tb_pizza(
id_pizza bigint auto_increment,
sabor varchar (50) not null,
preco decimal (6,2) not null,
telefone varchar (20) not null,
quantidade int  not null,
id_fk bigint not null,

primary key(id_pizza),
foreign key(id_fk) references tb_categoria (id)
-- foreign key (classePersonagem) references tb_classe (id)
);

insert into tb_categoria (tamanho, borda, tipo) values ("Pequena", "Catupiry", "Salgada");
insert into tb_categoria (tamanho, borda, tipo) values ("Pequena", "Catupiry", "Doce");
insert into tb_categoria (tamanho, borda, tipo) values ("Pequena", "Chocolate", "Salgada");
insert into tb_categoria (tamanho, borda, tipo) values ("Pequena", "Chocolate", "Doce");
insert into tb_categoria (tamanho, borda, tipo) values ("Média", "Catupiry", "Salgada");
insert into tb_categoria (tamanho, borda, tipo) values ("Média", "Catupiry", "Doce");
insert into tb_categoria (tamanho, borda, tipo) values ("Média", "Chocolate", "Salgada");
insert into tb_categoria (tamanho, borda, tipo) values ("Média", "Chocolate", "Doce");
insert into tb_categoria (tamanho, borda, tipo) values ("Grande", "Catupiry", "Salgada");
insert into tb_categoria (tamanho, borda, tipo) values ("Grande", "Catupiry", "Doce");
insert into tb_categoria (tamanho, borda, tipo) values ("Grande", "Chocolate", "Salgada");
insert into tb_categoria (tamanho, borda, tipo) values ("Grande", "Chocolate", "Doce");

alter table tb_categoria ADD tipo varchar (50) not null;
alter table tb_pizza drop telefone;

insert into tb_pizza (sabor, preco, quantidade, id_fk) values ("Muçarela", 20.00, 1, 1);
insert into tb_pizza (sabor, preco, quantidade, id_fk) values ("Muçarela", 22.00, 1, 3);
insert into tb_pizza (sabor, preco, quantidade, id_fk) values ("Muçarela", 24.00, 1, 5);
insert into tb_pizza (sabor, preco, quantidade, id_fk) values ("Muçarela", 26.00, 1, 7);
insert into tb_pizza (sabor, preco, quantidade, id_fk) values ("Muçarela", 28.00, 1, 9);
insert into tb_pizza (sabor, preco, quantidade, id_fk) values ("Muçarela", 30.00, 1, 11);
insert into tb_pizza (sabor, preco, quantidade, id_fk) values ("Brigadeiro", 40.00, 1, 2);
insert into tb_pizza (sabor, preco, quantidade, id_fk) values ("Brigadeiro", 42.00, 1, 4);
insert into tb_pizza (sabor, preco, quantidade, id_fk) values ("Brigadeiro", 44.00, 1, 6);
insert into tb_pizza (sabor, preco, quantidade, id_fk) values ("Brigadeiro", 46.00, 1, 8);
insert into tb_pizza (sabor, preco, quantidade, id_fk) values ("Brigadeiro", 48.00, 1, 10);
insert into tb_pizza (sabor, preco, quantidade, id_fk) values ("Brigadeiro", 50.00, 1, 12);

-- drop table tb_pizza;
SELECT * from tb_pizza where preco>45;
SELECT * from tb_pizza where preco>29 and preco < 50;
SELECT * from tb_pizza where sabor like "%b%";

Select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_fk;

Select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_fk where tb_categoria.tipo = "Doce";


-- drop database db_pizzaria_legal;