/* Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

create database escola;
use escola;

create table estudantes (
id_estudantes int auto_increment,
nome varchar (50),
idade int,
RA int,
CPF varchar (15),
nota int,
primary key (id_estudantes)

);

insert into estudantes(nome, idade, RA, CPF, nota)
value ( " Marcia " , 19 , 874501 , 56789437603 , 9);
insert into estudantes(nome, idade, RA, CPF, nota)
value ( " Gustavo " , 29 , 768904 , 674890398 , 5);
insert into estudantes(nome, idade, RA, CPF, nota)
value ( " Joana " , 23 , 347004 , 89489039854 , 7);
insert into estudantes(nome, idade, RA, CPF, nota)
value ( " Carmem " , 27 , 398653 , 12390765432 , 8);
insert into estudantes(nome, idade, RA, CPF, nota)
value ( " Felipe " , 21 , 89765 , 89076543210 , 6);
insert into estudantes(nome, idade, RA, CPF, nota)
value ( " Marcelo " , 18 , 324678 , 98345621093 , 4 );
insert into estudantes(nome, idade, RA, CPF, nota)
value ( " Maria " , 25 , 985432 , 87523490298 , 10 );
insert into estudantes(nome, idade, RA, CPF, nota)
value ( " Victor " , 22 , 865321 , 12632490873, 3 );

Select * from estudantes where nota > 7;
Select * from estudantes where nota < 7;

update estudantes set nome = " Gustavo " , nota = 5 where id_estudantes = 3;




 