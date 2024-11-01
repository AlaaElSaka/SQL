create database Escola
go

use Escola

create table Curso (
curso_ID int primary key ,
nome varchar (100) not null,
descricao text ,
carga_horaria int not null
);



create table Aluno (
aluno_ID int primary key ,
nome varchar (100) not null,
data_nascimento date not null,
email varchar (100) not null
);


create table Instrtor (
instrutor_ID int primary key ,
nome varchar (100) not null,
especialidade varchar (100) not null 
);


create table Turma (
turma_ID int primary key ,
curso_ID int not null,
instrutor_ID int not null,
data_inicio date not null,
data_fim date not null

Foreign key (curso_ID) References Curso (curso_ID),
Foreign key (instrutor_ID) References Instrtor (instrutor_ID)
);


create table Matricula (
matricula_ID int primary key ,
aluno_ID int not null,
turma_ID int not null,
data_matricula date not null,

Foreign key (aluno_ID) References Aluno (aluno_ID),
Foreign key (turma_ID) References Turma (turma_ID)
);



insert into Curso values 
	(1,'SQL','Banco de dados ',40),
	(2,'Java','Programação',80)

insert into Aluno values 
	(10,'Pedro','10/25/2000','pedro@gmail.com'),
	(20,'Angelo','08/13/2001','angelo@gmail.com')

insert into Instrtor values
	(30,'Prof.Marco','Programação'),
	(40,'Prof.Adriano','TI')

insert into Turma values
	(50,1,30,'10/10/2024','11/11/2024'),
	(60,2,40,'10/15/2024','11/15/2024')

insert into Matricula values
	(70,10,50,'10/11/2024'),
	(80,20,60,'10/16/2024')




select * from Curso
select * from Aluno
select * from Instrtor
select * from Turma
select * from Matricula

