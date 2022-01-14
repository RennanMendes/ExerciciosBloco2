create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
	id bigint auto_increment,
    tarja varchar (20) not null,
    tipo varchar (20) not null,
    valido boolean not null,
    
    primary key (id)
);

create table tb_produto(
	
    id_produto bigint auto_increment,
    nome varchar (20) not null,
    preco decimal (6,2) not null,
    quantidade int not null,
    tipo varchar (20) not null,
    id_fk bigint not null,
    
    primary key (id_produto),
    foreign key (id_fk) references tb_categoria(id)
);

INSERT INTO tb_categoria (tarja, tipo, valido) values ("Branca", "Gota", true);
INSERT INTO tb_categoria (tarja, tipo, valido) values ("Branca", "Comprimido", true);
INSERT INTO tb_categoria (tarja, tipo, valido) values ("Vermelha", "Gota", true);
INSERT INTO tb_categoria (tarja, tipo, valido) values ("Vermelha", "Comprimido", true);
INSERT INTO tb_categoria (tarja, tipo, valido) values ("Preta", "Gota", true);
INSERT INTO tb_categoria (tarja, tipo, valido) values ("Preta", "Comprimido", true);

INSERT INTO tb_produto (nome, preco, quantidade, tipo, id_fk) values ("Dipirona", 8.47, 100, "Comprimido", 2);
INSERT INTO tb_produto (nome, preco, quantidade, tipo, id_fk) values ("Dipirona", 3.66, 100, "Gota", 1);
INSERT INTO tb_produto (nome, preco, quantidade, tipo, id_fk) values ("Buscopam", 15.20, 100, "Comprimido", 2);
INSERT INTO tb_produto (nome, preco, quantidade, tipo, id_fk) values ("Benegrip", 31.45, 100, "Gota", 1);
INSERT INTO tb_produto (nome, preco, quantidade, tipo, id_fk) values ("Janumet", 238.58, 50, "Comprimido", 4);
INSERT INTO tb_produto (nome, preco, quantidade, tipo, id_fk) values ("Hipertrol", 238.58, 50, "Comprimido", 4);
INSERT INTO tb_produto (nome, preco, quantidade, tipo, id_fk) values ("Ritalina", 630.28, 20, "Comprimido", 6);
INSERT INTO tb_produto (nome, preco, quantidade, tipo, id_fk) values ("Diazep", 5.85, 20, "Comprimido", 6);

SELECT * FROM tb_produto where preco > 50;
SELECT * FROM tb_produto where preco > 3 and preco < 60;
SELECT * FROM tb_produto where nome like "%B%";

SELECT * FROM tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_fk;
SELECT * FROM tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_fk where tb_categoria.tarja = "Branca";

