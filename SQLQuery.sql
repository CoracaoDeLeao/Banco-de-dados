CREATE TABLE Funcionários
(FunCódigo INT,
FunNome VARCHAR (40),
FunCargo VARCHAR(30),
FunIdade  INT,
FunSalario NUMERIC(10, 2),
FunCidade VARCHAR(20),
Constraint PK_COD Primary Key(FunCódigo));

--Selecionar registros
Select * from Funcionários;

--Inserir um registro
Insert into Funcionários values
(1,'Isaac','Dono do Mundo',13,1.000,'São Paulo');

--Inserir código e nome
Insert into Funcionários (FunCódigo, FunNome) values (1, 'Isaac');
Insert into Funcionários (FunCódigo, FunNome, FunCargo, FunIdade, FunSalario, FunCidade) values (2, 'Isaac', 'Aluno', 17, 1000, 'SP');
Insert into Funcionários (FunCódigo, FunNome, FunCargo, FunIdade, FunSalario, FunCidade) values (3, 'Isaac', 'Aluno', 17, 2000, 'DIADEMA');

--Alterar cargo e idade do funcionario
Update Funcionários set FunCargo = 'Inspetor', FunIdade = 45 where FunCódigo = 1;

--Atualizar salário com reajuste de 10%
Update Funcionários set FunSalario = FunSalario * 1.10;

--Selecionar todos com idade entre 30 e 40 (inclusive)

Select * from Funcionários where FunIdade >= 10 and FunIdade <= 20;

Select * from Funcionários where FunIdade between 10 and 20;

--Selecionar todos de SP, MAUÁ e DIADEMA

Select * from Funcionários where FunCidade = 'SP' or FunCidade = 'DIADEMA' or  FunCidade = 'MAUÁ';

Select * from Funcionários where FunCidade IN ('SP', 'DIADEMA', 'MAUÁ');

--Selecionar todos com nome iniciado pela letra I

Select * from Funcionários where FunNome like 'I%';

--Selecionar todos que terminam com a letra C

Select * from Funcionários where FunNome like '%c';

--Selecionar todos em ordem de nome

Select * from Funcionários order  by FunNome;

--Selecionar me ordem decrecente

Select * from Funcionários order  by FunNome desc;

--Selecionar a cidade sem duplicidade

Select distinct FunCidade from Funcionários;

--Selelecionar as cidades duplicadas

Select FunCidade from Funcionários;

--Quantos funcionarios temos no cadastro

Select COUNT(*) from Funcionários;

Select COUNT(*) as 'Quantidade de funcionarios' from Funcionários;

--Qual o valor do maior salario

Select MAX(FunSalario) as 'Maior' from Funcionários;

--Qual o menor salario

Select MIN(FunSalario) as 'Menor' from Funcionários;

--Qual o total pago(SOMA)

Select SUM(FunSalario) as 'TOTAL' from Funcionários;

--Qual a media de salario

Select AVG(FunSalario) as 'Média' from Funcionários;

--Excluir tabela com registros
Drop Table Funcionários;