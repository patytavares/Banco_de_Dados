create database RH_Itau;
Use RH_Itau; 
create table funcionarios(
id_funcionario bigint auto_increment,
nome varchar(50),
cpf varchar (15),
idade int,
salario numeric(20),
primary key(id_funcionario)

);

insert into funcionarios(nome, cpf, idade, salario) value("João Victor","12345678024",23,2500);
insert into funcionarios(nome, cpf, idade, salario) value("Maria Regina","98765432165",27,1300);
insert into funcionarios(nome, cpf, idade, salario) value("Osvaldo Candido","16765432165",29,1000);

select *from funcionarios;

select nome from funcionarios where salario > 2000;
select nome from funcionarios where salario < 2000;
select nome from funcionarios where salario = 1000;

update funcionarios set salario = 4000 where id_funcionario = 2;








