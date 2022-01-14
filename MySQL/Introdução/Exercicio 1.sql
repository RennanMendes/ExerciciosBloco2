create database db_rh;

use db_rh;

create table tb_funcionarios(

cpf varchar (20) not null,
nome varchar (50),
nascimento date not null,
cargo varchar (60) not null,
salario decimal (6,2) not null,
primary key (cpf)
);

select * from tb_funcionarios;

insert into tb_funcionarios (cpf, nome, nascimento, cargo, salario) values ("452.436.489-56", "Evandro",'1994-03-05',"Ax Produção", 1860.33);
insert into tb_funcionarios (cpf, nome, nascimento, cargo, salario) values ("352.265.356-22", "Lucas",'1993-05-12',"Montador", 2000.55);
insert into tb_funcionarios (cpf, nome, nascimento, cargo, salario) values ("152.266.269-15", "Geraldo",'1984-03-05',"Supervisor", 5000.62);
insert into tb_funcionarios (cpf, nome, nascimento, cargo, salario) values ("249.235.309-06", "Mariana",'1976-04-25',"Gerente", 7000.62);
insert into tb_funcionarios (cpf, nome, nascimento, cargo, salario) values ("426.435.638-95", "Rennan",'1998-05-26',"Diretor", 9000.62);

select * from tb_funcionarios;
select * from tb_funcionarios where salario>2000.00;
select * from tb_funcionarios where salario<2000.00;
update tb_funcionarios set salario = 2500.00 where cpf="352.265.356-22";
select * from tb_funcionarios;