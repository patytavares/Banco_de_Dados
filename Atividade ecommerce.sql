create database MAGAZINE;
use MAGAZINE;

create table produtos(
id bigint auto_increment,
nome varchar (255) not null, 
cor varchar  (50) not null,
tamanho varchar (50) not null,
valor float (50) not null,
primary key (id)

); 

insert into produtos (nome, cor, tamanho, valor)
value(" blusa " , " preta ", ' PP ', 75 );
insert into produtos (nome, cor, tamanho, valor)
value(" calção " , " Branco ", ' P ', 100 );
insert into produtos (nome, cor, tamanho, valor)
value(" legue " , " vermelha ", ' M ', 50 );
insert into produtos (nome, cor, tamanho, valor)
value(" calsa " , " azul ", ' GG ', 150 );
insert into produtos (nome, cor, tamanho, valor)
value(" sapato " , " marrom ", ' 42 ', 550 );
insert into produtos (nome, cor, tamanho, valor)
value(" bota " , " vinho ", ' 36 ', 600 );
insert into produtos (nome, cor, tamanho, valor)
value(" perfume " , " roxo ", ' 150ml ', 700 );
insert into produtos (nome, cor, tamanho, valor)
value(" casaco " , " rosa ", ' P ', 500 );

select * from produtos;

select * from produtos where valor > 500;
select * from produtos where valor < 500;

update produtos set valor = 125 where id = 1;


