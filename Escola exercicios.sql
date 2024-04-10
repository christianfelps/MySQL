create database db_escola;
use  db_escola;

create table tb_alunos(
id  bigint auto_increment primary key,
nome varchar(255),
serie decimal(6,2),
periodo varchar(255),
notas decimal(3,1)
);


insert into tb_alunos (nome, serie, periodo, notas)
values ("Miguel santos", 1,'manhã', 9 );
insert into tb_alunos (nome, serie, periodo, notas)
values ("Christian alvim", 3,'tarde', 6 );
insert into tb_alunos (nome, serie, periodo, notas)
values ("Santos dumon", 5,'manhã', 4 );
insert into tb_alunos (nome, serie, periodo, notas)
values ("Oliveira Almon", 6,'tarde', 7 );
insert into tb_alunos (nome, serie, periodo, notas)
values ("Joana alvim", 8,'Tarde', 3 );
insert into tb_alunos (nome, serie, periodo, notas)
values ("Parulio da Silva", 5,'manhã', 2 );


select * from tb_alunos where  notas > 7;
select * from tb_alunos where  notas < 7;
-- editei errado a notas e voltei para a configuracao padrao la de cima
ALTER TABLE tb_alunos MODIFY notas DECIMAL(3,1);
ALTER TABLE tb_alunos MODIFY serie bigint;

update tb_alunos set serie = 2 where id =6;

select * from tb_alunos;
