CREATE TABLE Funcion�rios
(FunC�digo INT,
FunNome VARCHAR (40),
FunCargo VARCHAR(30),
FunIdade  INT,
FunSalario NUMERIC(10, 2),
FunCidade VARCHAR(20),
Constraint PK_COD Primary Key(FunC�digo));

--Selecionar registros
Select * from Funcion�rios;

--Inserir um registro
Insert into Funcion�rios values
(1,'Isaac','Dono do Mundo',13,1.000,'S�o Paulo');

--Inserir c�digo e nome
Insert into Funcion�rios (FunC�digo, FunNome) values (1, 'Isaac');
Insert into Funcion�rios (FunC�digo, FunNome, FunCargo, FunIdade, FunSalario, FunCidade) values (2, 'Isaac', 'Aluno', 17, 1000, 'SP');
Insert into Funcion�rios (FunC�digo, FunNome, FunCargo, FunIdade, FunSalario, FunCidade) values (3, 'Isaac', 'Aluno', 17, 2000, 'DIADEMA');

--Alterar cargo e idade do funcionario
Update Funcion�rios set FunCargo = 'Inspetor', FunIdade = 45 where FunC�digo = 1;

--Atualizar sal�rio com reajuste de 10%
Update Funcion�rios set FunSalario = FunSalario * 1.10;

--Selecionar todos com idade entre 30 e 40 (inclusive)

Select * from Funcion�rios where FunIdade >= 10 and FunIdade <= 20;

Select * from Funcion�rios where FunIdade between 10 and 20;

--Selecionar todos de SP, MAU� e DIADEMA

Select * from Funcion�rios where FunCidade = 'SP' or FunCidade = 'DIADEMA' or  FunCidade = 'MAU�';

Select * from Funcion�rios where FunCidade IN ('SP', 'DIADEMA', 'MAU�');

--Selecionar todos com nome iniciado pela letra I

Select * from Funcion�rios where FunNome like 'I%';

--Selecionar todos que terminam com a letra C

Select * from Funcion�rios where FunNome like '%c';

--Selecionar todos em ordem de nome

Select * from Funcion�rios order  by FunNome;

--Selecionar me ordem decrecente

Select * from Funcion�rios order  by FunNome desc;

--Selecionar a cidade sem duplicidade

Select distinct FunCidade from Funcion�rios;

--Selelecionar as cidades duplicadas

Select FunCidade from Funcion�rios;

--Quantos funcionarios temos no cadastro

Select COUNT(*) from Funcion�rios;

Select COUNT(*) as 'Quantidade de funcionarios' from Funcion�rios;

--Qual o valor do maior salario

Select MAX(FunSalario) as 'Maior' from Funcion�rios;

--Qual o menor salario

Select MIN(FunSalario) as 'Menor' from Funcion�rios;

--Qual o total pago(SOMA)

Select SUM(FunSalario) as 'TOTAL' from Funcion�rios;

--Qual a media de salario

Select AVG(FunSalario) as 'M�dia' from Funcion�rios;

--Excluir tabela com registros
Drop Table Funcion�rios;