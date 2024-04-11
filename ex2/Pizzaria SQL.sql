create database db_pizzaria;
use db_pizzaria;

create table table_categorias(
id bigint auto_increment primary key,
Tipo varchar(255),
pedacos bigint
);

insert into table_categorias(Tipo, pedacos) values ("frita", "4");
insert into table_categorias(Tipo, pedacos) values ("frita", "8");
insert into table_categorias(Tipo, pedacos) values ("industrial", "4");
insert into table_categorias(Tipo, pedacos) values ("industrial", "8");
insert into table_categorias(Tipo, pedacos) values ("Lenha", "4");
insert into table_categorias(Tipo, pedacos) values ("Lenha", "8");
insert into table_categorias(Tipo, pedacos) values ("doce", "4");
insert into table_categorias(Tipo, pedacos) values ("doce", "8");

create table tb_pizzas(
id bigint auto_increment primary key,
sabor varchar(255),
preco decimal(6,2),
bordarecheada boolean,
massa varchar(255),
categoriaid bigint
);

select * from table_categorias;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categoriaid 
FOREIGN KEY (categoriaid) REFERENCES table_categorias(id);


insert into tb_pizzas (sabor, preco, bordarecheada, massa, categoriaid) values ("Napolitano", 55.00, false, "esfiha",1),("portuguesa", 66.00, true, "pizza",2),("Calabresa", 55.00, true, "esfiha",3),("Brigadeiro", 77.00, true, "pizza",4),
("portuguesa", 66.00, true, "pizza",5), ("Bahiana", 66.00, false, "esfiha",6), ("mussarela", 58.00, true, "pizza",7),("japonesa", 88.00, false, "pizza",8);

select * from tb_pizzas where preco > 45;

select * from tb_pizzas where preco between 50 and 100;

select * from tb_pizzas where sabor like "%M%";


SELECT sabor, preco, bordarecheada, massa, table_categorias.tipo,
table_categorias.pedacos
FROM tb_pizzas INNER JOIN table_categorias 
ON tb_pizzas.categoriaid = table_categorias.id;

SELECT sabor, preco, bordarecheada, massa, table_categorias.tipo,
table_categorias.pedacos
FROM tb_pizzas INNER JOIN table_categorias 
ON tb_pizzas.categoriaid = table_categorias.id where table_categorias.id = 8;
SELECT sabor, preco, bordarecheada, massa, table_categorias.tipo,
table_categorias.pedacos
FROM tb_pizzas INNER JOIN table_categorias 
ON tb_pizzas.categoriaid = table_categorias.id where table_categorias.tipo like "%frita%";









