
create database Curso_funcionarios;

create table funcionario (id integer, id_curso integer, matricula integer(50), nome varchar(50), data_nascimento date, primary key (id), foreign key (id_curso) references curso(id));

create table dependente (id integer,id_funcionario integer, nome varchar(50), primary key (id), foreign key (id_funcionario) references funcionario(id));

create table curso (id integer, nome varchar(50), ano_curso varchar(20), primary key (id));	
 
insert into funcionario values (1, 1, 21331, 'Roberto Alfredo', '1991/07/12');

insert into funcionario values (3,1, 213243,'Mafalda Ribeiro', '1987/05/11');

insert into dependente values (5,1, 'João Batista');

insert into curso values (1, 'Tecnico em Informatica', '2010');  




