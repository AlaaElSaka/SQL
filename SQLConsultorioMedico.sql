use master; 


create database ConsultorioMedico;
go

use ConsultorioMedico;
go


create table Paciente (
IdPaciente int primary key ,
Nome varchar (200) not null,
DataNascimento date not null,
Endereco varchar (200) not null,
Telefone varchar (100) not null
);


create table Medico (
IdMedico int primary key ,
Nome varchar (200) not null,
CRM varchar (100) not null,
IdEspecialidade int not null
);

create table Especialidade (
IdEspecialidade int primary key ,
Descricao varchar (200) not null 
);

create table Consulta (
IdConsulta int primary key ,
IdPaciente int not null,
IdMedico int ,
DataConsulta date not null,
Observacoes varchar (100)
); 

alter table Medico
Add constraint IdEspecialidade_FK foreign key (IdEspecialidade) references Especialidade(IdEspecialidade);

alter table Consulta
Add constraint IdPaciente_FK foreign key (IdPaciente) references Paciente(IdPaciente),
	constraint IdMedico_FK foreign key (IdMedico) references Medico(IdMedico);


insert into Especialidade values 
	(1, 'Cardiologia'),
    (2, 'Dermatologia');

insert into Paciente values 
	(1, 'João Silva', '1985-06-15', 'Rua A, 123, São Paulo', '(11) 98765-4321'),
	(2, 'Maria Oliveira', '1990-11-20', 'Av. B, 456, Rio de Janeiro', '(21) 99876-5432');

insert into Medico values
	(1, 'Dr. Ricardo Almeida', 'CRM-SP 12345', 1),
	(2, 'Dra. Ana Souza', 'CRM-RJ 67890', 2);



insert into Consulta values
	(1, 1, 1, '2024-11-10 10:00:00', 'Paciente com histórico de problemas cardíacos.'),
	(2, 2, 2, '2024-11-12 14:30:00', 'Queixa de manchas na pele, exames solicitados.');

select * from Paciente
select * from Medico
select * from Especialidade
select * from  Consulta

drop table Paciente,Medico,Especialidade,Consulta;