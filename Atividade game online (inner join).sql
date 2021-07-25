create database db_generation_game_online;
use  db_generation_game_online;

create table tb_classe (
id_classe bigint auto_increment not null,
DescrClasse varchar (255),
PoderAtaque float,
PoderDefesa float,
primary key (id_classe)
); 


create table tb_personagem (
id_personagem bigint auto_increment,
NomePersonagem varchar(255),
NivelPersonagem int,
Raca varchar(255),
Cor_cabelo varchar (255),
Hp float,
classe_id bigint,
primary key(id_personagem),
Foreign Key(classe_id) REFERENCES tb_classe(id_classe)

);

Insert Into tb_Classe (DescrClasse, PoderAtaque, PoderDefesa)
Value ("Arqueiro" , 3000.00, 1300.00 );
Insert Into tb_Classe (DescrClasse, PoderAtaque, PoderDefesa)
Value (" Guerreiro" , 2000.00, 1500.00 );
Insert Into tb_Classe (DescrClasse, PoderAtaque, PoderDefesa)
Value ("sacerdote" , 1000.00, 5000.00 );
Insert Into tb_Classe (DescrClasse, PoderAtaque, PoderDefesa)
Value ("Assassino" , 6000.00, 1800.00 );
Insert Into tb_Classe (DescrClasse, PoderAtaque, PoderDefesa)
Value ("Paladino" , 9000.00, 2000.00 );

select  *  from tb_classe;

Insert Into tb_personagem( NomePersonagem, NivelPersonagem, Raca, Cor_cabelo, Hp)
Value( "Cecilia" , 10 , "Humana" , "Preto", 2000);
Insert Into tb_personagem( NomePersonagem, NivelPersonagem, Raca, Cor_cabelo, Hp)
Value( "Enda" , 8 , "Fada" , "Loiro", 3000);
Insert Into tb_personagem( NomePersonagem, NivelPersonagem, Raca, Cor_cabelo, Hp)
Value( "Maneco" , 12 , "Elfo" , "castanho", 4000);
Insert Into tb_personagem( NomePersonagem, NivelPersonagem, Raca, Cor_cabelo, Hp)
Value( "Elsa" , 11 , "Fada" , "castanho", 5000);
Insert Into tb_personagem( NomePersonagem, NivelPersonagem, Raca, Cor_cabelo, Hp)
Value( "Gabriel" , 13 , "Anjo" , "Preto", 6000);
Insert Into tb_personagem( NomePersonagem, NivelPersonagem, Raca, Cor_cabelo, Hp)
Value( "Cacto" , 9 , "Demonica " , "ruivo" , 7000);
Insert Into tb_personagem( NomePersonagem, NivelPersonagem, Raca, Cor_cabelo, Hp)
Value( "Angel" , 15 , "Meio Anjo " , "marrom" , 8000);
Insert Into tb_personagem( NomePersonagem, NivelPersonagem, Raca, Cor_cabelo, Hp)
Value( "Luna" , 7 , "Meio Elfo " , "roxo" , 9000);

select  *  from tb_personagem;

SELECT  tb_personagem. NomePersonagem , tb_classe . DescrClasse , tb_classe . PoderAtaque 
	FROM tb_personagem INNER JOIN tb_classe 	
	WHERE tb_classe . PoderAtaque  >  2000 ;
    
    SELECT  tb_personagem . NomePersonagem , tb_classe . DescrClasse , tb_classe . PoderDefesa
	FROM tb_personagem INNER JOIN tb_classe	
    WHERE  tb_classe . PoderDefesa < 2000  && PoderDefesa > 1000 ;
    
    SELECT NomePersonagem from  tb_personagem Where  NomePersonagem LIKE " % c % " ;
    
    SELECT tb_personagem . NomePersonagem , tb_classe . DescrClasse
	FROM tb_personagem INNER JOIN tb_classe 	
	WHERE  tb_classe . DescrClasse  =  " Guerreiro " ; 
    
    
    
    





    
    
    



















 



