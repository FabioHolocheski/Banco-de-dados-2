create database Gestao_software;

create table programador (id integer, matricula integer(50), nome varchar(50), id_programa integer, id_nivel_programador integer, id_setor integer, primary key (id), foreign key (id_programa) references programa(id),foreign key (id_nivel_programador) references nivel_programador(id), foreign key (id_setor) references setor (id));

create table programa (id integer, nome varchar(50), tempo_estimado varchar(35), id_nivel_dificuldade integer, primary key (id), foreign key (id_nivel_dificuldade) references nivel_dificuldade(id));

create table nivel_dificuldade(id integer, descricao varchar(50), primary key (id));	

create table nivel_programador (id integer, descricao varchar(50), primary key (id));	
 
create table setor (id integer, descricao varchar(60), primary key (id));
 
insert into programador values (1, 443, 'lemom wallet', 3, 2,5);

insert into programa values (3,'controle de estoque', '6 messes', 1 );

insert into nivel_dificuldade values (1, 'Fácil');
insert into nivel_dificuldade values (2, 'Médio');
insert into nivel_dificuldade values (3, 'Dificil');

insert into nivel_programador values (1, '1- Júnior');  
insert into nivel_programador values (2, '2- Pleno');  
insert into nivel_programador values (3, '3- Senior');  

insert into setor values (5, 'desenvolvimento Web');




