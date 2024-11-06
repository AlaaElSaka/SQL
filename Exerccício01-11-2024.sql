create database LojaDB
go

use LojaDB
go

create table Categorias (
Categoria_ID int identity primary key ,
Nome varchar (200) not null

);


create table Produtos (
Produto_ID int identity primary key,
Nome varchar (200) not null,
Valor decimal (30) not null,
Quantidade int not null,
Categoria_ID int ,

foreign key (Categoria_ID) References Categorias(Categoria_ID)

);


create table Clientes (
Cliente_ID int identity primary key,
NomeCompleto varchar (200) not null,
Email varchar (200) not null,
Endereço varchar (200) not null,
Telefone varchar (200) not null,


);


create table Pedido (
Pedido_ID int identity primary key,
Cliente_ID int,
DataPedido date not null,
Status varchar (30) not null,

foreign key (Cliente_ID) References Clientes(Cliente_ID),

);


create table ItemPedido (
ItemPedido_ID int identity primary key,
Pedido_ID int,
Produto_ID int,
Quantidade int ,
Valor decimal ,

foreign key (Pedido_ID) References Pedido(Pedido_ID),
foreign key (Produto_ID) References Produtos(Produto_ID),

);


insert into Categorias values 
	('Eletrônicos'),
	('Roupas'),
	('Alimentos');

insert into Produtos values
	('Smartphone', 1500.00, 30, 1),
	('Camiseta', 50.00, 100, 2),
	('Chocolate', 5.00, 200, 3);

insert into Clientes values
	('João Silva', 'joao@email.com','Rua X', '123456789'),
	('Maria Souza', 'maria@email.com','Rua Y', '987654321'),
	('Carlos Oliveira', 'carlos@email.com','Rua Z' ,'456123789');

insert into Pedido values 
	(1,'10/02/2024','Em andamento'),
	(2,'10/05/2024', 'Entregue'),
	(3,'10/06/2024', 'Cancelado');

insert into ItemPedido values
	( 1, 1,30, 1500.00),
	( 2, 2,100, 50.00),
	( 3, 3,200, 5.00);

select * from Categorias
select * from Produtos
select * from Clientes
select * from Pedido
select * from ItemPedido


