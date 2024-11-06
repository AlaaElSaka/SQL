Create database BibliotecaDB

use BibliotecaDB;

create table Autores (
	AutorID int identity primary key,
	NomeCompleto varchar (255) not null,
	Paisorigem varchar (100) not null
);


create table Livros (
	LivroID int identity primary key,
	Titulo varchar (255) not null,
	AnoPublicacao int not null,
	AutorID int not null
	foreign key (AutorID) References Autores(AutorID)
);


create table Emprestimos (
	EmprestimosID int identity primary key,
	DataEmprestimo DATE not null,
	DataDevolucao DATE  not null,
	LivroID int not null
	foreign key (LivroID) References Livros(LivroID)
);



INSERT INTO Autores VALUES 
	('Gabriel Garc�a M�rquez', 'Col�mbia'),
	('J.K. Rowling', 'Reino Unido'),
	('Haruki Murakami', 'Jap�o'),
	('George Orwell', 'Reino Unido')


INSERT INTO Livros VALUES 
	('Cem Anos de Solid�o', 1967, 1),
	('Harry Potter e a Pedra Filosofal', 1997, 2),
	('Kafka � Beira-Mar', 2002, 3),
	('1984', 1949, 4)


INSERT INTO Emprestimos VALUES 
	('01/10/2024','11/10/2024', 1),
	('05/10/2024','11/10/2024', 2),
	('10/10/2024','05/10/2024', 3),
	('12/10/2024','11/10/2024',4)



select * from Autores
select * from Livros
select * from Emprestimos




select L.Titulo as T�tulo, L.AnoPublicacao as 'Ano Publica��o', A.NomeCompleto as 'Nome Completo',
E.DataEmprestimo as 'Data Empr�stimo', E. DataDevolucao as 'Data Devolu��o' 
from Emprestimos E
INNER JOIN Livros L on L.LivroID = E.LivroID
INNER JOIN Autores A on A.AutorID = L.AutorID


update Livros
set  AutorID = 5
where LivroID = 2


Delete from Autores
where AutorID = 3

Drop table Autores,Livros,Emprestimos


