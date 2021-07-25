create database db_pizzaria_legal;
use db_pizzaria_legal;

Create table tb_categoria (
id_categoria bigint auto_increment not null,
Doce varchar (50),
Salgado varchar (50),
Vegana varchar (50),

primary key (id_categoria)
);


Insert into tb_categoria( Doce, Salgado, Vegana)
Value ("Chocate com avelã" , "Frango com catupiry" , "Brocolis com palmito");

Insert into tb_categoria( Doce, Salgado, Vegana)
Value ("Morango com chocolate" , "Frango com milho" , "Milho verde");

Insert into tb_categoria( Doce, Salgado, Vegana)
Value ("Chocolate com bombom" , "Calabresa" , "Brocolis com catupiry");

Insert into tb_categoria( Doce, Salgado, Vegana)
Value ("Banana com chocolate" , "Queijo com milho" , "Rucula com tomate seco");

Insert into tb_categoria( Doce, Salgado, Vegana)
Value ("Chocolate branco com passas ao rum" , "Portuguesa" , "vegetariana");

select  *  from tb_categoria;

Create table tb_pizza (
id_pizza bigint auto_increment not null,
Nome varchar (255),
Descricao varchar (255),
Sabor varchar (255),
Tamanho varchar (255),
Quantidade int (15),
Valor int (15), 
categoria_id bigint,

primary key (id_pizza),
foreign Key (categoria_id) References tb_categoria(id_categoria)
);


  Insert into tb_pizza (Nome, Descricao, Sabor, Tamanho, Quantidade, Valor )
  Value ( " Calabresa " , " Calabresa com catupiry " , "salgado" , "Familiar" , 12, 99);
  
  Insert into tb_pizza (Nome, Descricao, Sabor, Tamanho, Quantidade, Valor )
  Value ( " Frango " , " Frango com catupiry " , " Salgado" , "Grande" , 8, 59);
  
  Insert into tb_pizza (Nome, Descricao, Sabor, Tamanho, Quantidade, Valor )
  Value ( " Chocolate " , " Chocolate com mussarela " , " doce " , "pequena" , 4 , 30);
  
  Insert into tb_pizza (Nome,  Descricao, Sabor, Tamanho, Quantidade, Valor )
  Value ( " Vegetariana " , " Brocolis com palmito e azeitonas " , "Vegana" , "Familiar" , 12, 95);
  
  Insert into tb_pizza (Nome, Descricao, Sabor, Tamanho, Quantidade, Valor )
  Value ( " Brigadeiro " , " Chocolate, bombom e chocolate granulado " , "Doce" , "Media" , 6 , 45);
  
  Insert into tb_pizza (Nome, Descricao, Sabor, Tamanho, Quantidade, Valor )
  Value ( " Portuguesa " , " Ovo, carne, palmitos e azeitona " , "Salgado" , "Grande" , 8, 77);
  
  Insert into tb_pizza (Nome, Descricao, Sabor, Tamanho, Quantidade, Valor )
  Value ( " Millho" , " Milho verde " , " vegana", "Media" , 6 , 49);
  
  Insert into tb_pizza (Nome, Descricao, Sabor, Tamanho, Quantidade, Valor )
  Value ( " Maguerita " , " molho, mucarela, tomate e manjericao " , "Vegana" , "pequena" , 4 , 30);
  
  select  *  from tb_pizza;
  
Select  * from tb_pizza  Where valor >  45 ;
Select  * from tb_pizza Where valor > 29 && valor < 60 ;
select  *  from tb_pizza Where Nome like  " % C % " ;

select  *  from tb_pizza inner join tb_categoria
where   id_pizza  =  id_categoria;

select  *  from tb_pizza inner join tb_categoria where
tb_categoria . Doce  =  tb_categoria . Doce ;

 


  
  
  
  
  

  


















