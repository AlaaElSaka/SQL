use master;

drop database BDTI46;

-- Criar uma base de dados
create database BDTI46;
go


-- Entrar na base dados
use BDTI46;


-- Realizar backup da base de dados
backup database BDTI46
to disk = 'C:\temp\BDTI46.bak';


-- Restaurar a base do dados
restore database BDTI46
from disk = 'C:\temp\BDTI46.bak';


