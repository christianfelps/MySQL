
create database db_RH;
use  db_RH;


create table tb_colaboradores(
id  bigint auto_increment primary key,
nome varchar(255),
salario decimal(6,2),
datainicio date,
horasExtras decimal(3,1)
);


insert into tb_colaboradores (nome, salario, datainicio, horasExtras)
values ("Christian", 1500.00,'2022-04-01', 5 );
insert into tb_colaboradores (nome, salario, datainicio, horasExtras)
values ("Pamela", 1300.00,'2024-02-27', 10 );
insert into tb_colaboradores (nome, salario, datainicio, horasExtras)
values ("Rita", 1800.00,'2021-05-20', 20 );
insert into tb_colaboradores (nome, salario, datainicio, horasExtras)
values ("Valmir", 2100.00,'2018-08-12', 25 );
insert into tb_colaboradores (nome, salario, datainicio, horasExtras)
values ("Centauri", 3300.00,'2017-12-10', 8 );
insert into tb_colaboradores (nome, salario, datainicio, horasExtras)
values ("christian", 1500.00,'2022-04-01', 5 );
insert into tb_colaboradores (nome, salario, datainicio, horasExtras)
values ("Paulo", 2500.00,'2013-04-01', 43 );
insert into tb_colaboradores (nome, salario, datainicio, horasExtras)
values ("Felipi Christian", 5000.00,'2024-02-09', 5 );
insert into tb_colaboradores (nome, salario, datainicio, horasExtras)
values ("Hugo", 1600.00,'2023-04-11', 5 );
insert into tb_colaboradores (nome, salario, datainicio, horasExtras)
values ("Vanderlei", 4300.00,'2022-02-21', 5 );
select * from tb_colaboradores where  salario > 2000;
select * from tb_colaboradores where  salario < 2000;
update tb_colaboradores set salario = 3330.00 where id = 2 ;

select * from tb_colaboradores








