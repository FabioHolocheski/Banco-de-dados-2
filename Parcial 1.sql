   create database Parcial1;
   
   use Parcial1;
   
create table Titulacoes (Id integer, Descricao varchar(40), primary key (id));

create table Professores (Id integer, Matricula varchar(40),Nome varchar(45), IdTitulacao integer, Endereco varchar(50), Cidade varchar(40), Email varchar(40), primary key (id), foreign key (IdTitulacao) references Titulacoes(id));

create table Turmas (Id integer, Descricao varchar(40), Semestre varchar(35), NumeroAlunos integer(25), primary key (id));

create table Disciplinas (Id integer, Descricao varchar(40), CargaHoraria integer(40), primary key (id));

create table Professor_Disciplina (IdProfessor integer, IdDisciplina integer, IdTurma integer, foreign key (IdProfessor) references Professores(id), foreign key (IdDisciplina) references Disciplinas(id),foreign key (IdTurma) references Turmas(id));


insert into Titulacoes values (1,'Especialização Incompleta');
insert into Titulacoes values (2,'Especialização Completa');
insert into Titulacoes values (3,'Mestrado Incompleto');
insert into Titulacoes values (4,'Mestrado Completo');
insert into Titulacoes values (5,'Doutorado Incompleto');
insert into Titulacoes values (6,'Doutorado Completo');


insert into Disciplinas values (1,'Programação de Banco de Dados',84);
insert into Disciplinas values (2,'Programação Orientada a Objetos',84);
insert into Disciplinas values (3,'Padrões de Projetos',84);
insert into Disciplinas values (4,'Sistemas Operacionais',84);
insert into Disciplinas values (5,'Algoritimos',130);
insert into Disciplinas values (6,'Matemática Discreta',84);
insert into Disciplinas values (7,'Teoria da Computação',84);
insert into Disciplinas values (8,'Estrutura de Dados',84);
insert into Disciplinas values (9,'Algebra Booleana',84);
insert into Disciplinas values (10,'Inteligência Artificial',84);
insert into Disciplinas values (11,'Eletrônica para Computação',84);
insert into Disciplinas values (12,'Robótica',84);
insert into Disciplinas values (13,'Redes de Computadores',84);
insert into Disciplinas values (14,'Sistemas Distribuidos',84);

insert into Professores values (1,'32458-9','Cristiano Rober',4,'Rua XV de Novembro, 32', '2','crfranco@fameg.edu.br');
insert into Professores values (2,'5247-9','Jose Roque Vo',2,'Rua Tobias Barreto, 26', '1','roque@terra.com.br');
insert into Professores values (3,'12548-9','Roberto Heisle Rober',1,'Rua Hermann Schultz', '3','hermann@gmail.com');

insert into Turmas values (1,'BCC','2008-2',34);
insert into Turmas values (2,'SIG','1999-1',28);
insert into Turmas values (3,'LC','1998-1',20);
insert into Turmas values (4,'BCC','2001-1',7);

insert into Professor_Disciplina values (1,1,2);
insert into Professor_Disciplina values (1,2,1);
insert into Professor_Disciplina values (1,2,3);
insert into Professor_Disciplina values (1,4,2);
insert into Professor_Disciplina values (2,7,3);
insert into Professor_Disciplina values (2,9,2);
insert into Professor_Disciplina values (2,10,3);
insert into Professor_Disciplina values (3,5,1);
insert into Professor_Disciplina values (3,6,1);




select professores.nome, titulacoes.descricao, turmas.descricao, disciplinas.descricao,
	disciplinas.cargaHoraria
FROM professores, titulacoes, turmas, disciplinas, professor_disciplina
WHERE
	professores.id = professor_disciplina.idProfessor AND
    disciplinas.id = professor_disciplina.idDisciplina AND
    turmas.id = professor_disciplina.idTurma AND
    titulacoes.id = professores.idTitulacao
ORDER BY professores.nome, turmas.descricao;