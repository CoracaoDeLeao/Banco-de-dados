Create Table Funcionario (

	funCodigo int,
	funNome varChar(40),
	funCargo varChar(30),
	funIdade int,
	funSalario Numeric(10,2),
	funCidade varChar(20),
	constraint PK_COD primary key (funCodigo));

--selecionar registro

select * from Funcionario;

--inserir um registro

insert into Funcionario values 
(1,'Isaac','Dono do Mundo',13,1.000,'São Paulo'),
(2,'Isaac','Dono do Mundo',13,1.000,'São Paulo');

--excluir tabela
--com registro

drop table Funcionario;