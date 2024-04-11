create database db_gamerpg;
use db_gamerpg;

create table tb_classes(
id bigint auto_increment primary key,
descricao varchar(255) not null,
arma varchar(255)
);

insert into tb_classes (descricao, arma) 
values ("Guerreiro", "Martelo de guerra");
insert into tb_classes (descricao, arma) 
values ("Mago", "Grimorio");
insert into tb_classes (descricao, arma) 
values ("Ladrao", "Besta de mao");
insert into tb_classes (descricao, arma) 
values ("Clerigo", "Maça");
insert into tb_classes (descricao, arma) 
values ("Arqueiro", "Arco");
insert into tb_classes (descricao, arma) 
values ("Paladino", "Espada Longa");
insert into tb_classes (descricao, arma) 
values ("Bardo", "Badolins");
insert into tb_classes (descricao, arma) 
values ("Necromante", "Cajado");

create table tb_personagens(
id bigint auto_increment primary key,
nome varchar(255) not null,
nivel bigint,
exp bigint,
ataque decimal(6,2),
defesa decimal(6,2),
racas bigint
);

select * from tb_classes;

ALTER TABLE tb_produtos ADD categoriaid BIGINT;

drop table tb_personagens;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_racas 
FOREIGN KEY (racas) REFERENCES tb_classes(id);

insert into tb_personagens (nome, nivel, exp, ataque, defesa, racas) 
values ("Bill o Grande", 20, 1000, 2500, 1000, 1);
insert into tb_personagens (nome, nivel, exp, ataque, defesa, racas) 
values ("Chaves o doido", 35, 4300, 3300, 1250, 2);
insert into tb_personagens (nome, nivel, exp, ataque, defesa, racas) 
values ("Ze Trombadinha", 15, 800, 200, 700, 3);
insert into tb_personagens (nome, nivel, exp, ataque, defesa, racas) 
values ("Curandeiro da esquina", 50, 1290, 2400, 1100, 4);
insert into tb_personagens (nome, nivel, exp, ataque, defesa, racas) 
values ("O mirador", 90, 10000, 6000, 3600, 5);
insert into tb_personagens (nome, nivel, exp, ataque, defesa, racas) 
values ("O espadao", 150, 18800, 8000, 2000, 6);
insert into tb_personagens (nome, nivel, exp, ataque, defesa, racas) 
values ("O cantoleiro", 10, 490, 400, 150, 7);
insert into tb_personagens (nome, nivel, exp, ataque, defesa, racas) 
values ("Chama o Coveiro", 5, 200, 780, 300, 8);

select * from tb_personagens ;

select * from tb_personagens where ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa between 1000 and 2000;

SELECT * FROM tb_personagens where nome like "%c%";

alter table tb_personagens modify column ataque bigint;
alter table tb_personagens modify column defesa bigint;


SELECT nome, nivel, exp, ataque, defesa, tb_classes.descricao,
tb_classes.arma
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.racas = tb_classes.id;


-- Dois metodos que fiz para procurar uma classe em especifico ou pelo numero da raca ou pelo nome 
SELECT nome, nivel, exp, ataque, defesa, tb_classes.descricao,
tb_classes.arma
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.racas = tb_classes.id where tb_classes.id= 3 ;
SELECT nome, nivel, exp, ataque, defesa, tb_classes.descricao,
tb_classes.arma
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.racas = tb_classes.id where tb_classes.descricao like "%arqueiro%" ;


















