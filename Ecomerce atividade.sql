

insert into tb_produtos (nome, preco, validade, quantidade)
values ("Vedapren", 350.00,'2026-04-01', 5 );
insert into tb_produtos (nome, preco, validade, quantidade)
values ("Piso-Colonial", 550.00,'2099-04-01', 100 );
insert into tb_produtos (nome, preco, validade, quantidade)
values ("Vestido-Princesa", 600.00,'2099-04-01', 10 );
insert into tb_produtos (nome, preco, validade, quantidade)
values ("Tenis-pedreira", 260.00,'2099-04-01', 12 );
insert into tb_produtos (nome, preco, validade, quantidade)
values ("Luminaria-Rustico", 550.00,'2099-04-01', 90 );
insert into tb_produtos (nome, preco, validade, quantidade)
values ("Modem-100gb", 400.00,'2099-04-01', 5 );
insert into tb_produtos (nome, preco, validade, quantidade)
values ("Vedacit-36lts", 520.00,'2024-09-30', 6);

select * from tb_produtos where  preco > 500.00;
select * from tb_produtos where  preco < 500;
update tb_produtos set preco = 600.00 where id = 2 ;

select * from tb_produtos;








