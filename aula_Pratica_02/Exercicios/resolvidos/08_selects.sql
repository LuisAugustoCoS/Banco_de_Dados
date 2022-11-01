
-- -------------------MAIS SELECTS---------------------
-- O SELECT é uma das cláusulas mais diversificadas;.
-- Usamos select para filtrar, classificar, calcular;
-- juntar informações de tabelas diferentes, verificar 
-- valores e até ranquear informações.
-- Por isso vamos exercitar muuuuuuiiiiiiittoooo o SELECT.
/*Salve como: 08_selects.sql*/
USE escola14
GO
-- Exemplo 1: selecionar todos os dados da tabela
SELECT al.*
FROM tbaluno al;
GO

                   
-- Exemplo 2: selecionar apenas campos determinados (cod e nome)
SELECT al.cod_aluno AS cod ,
	   al.nome_aluno AS nome
FROM tbaluno al;
GO

-- Exemplo 3 (ORDER BY): selecionar o nome em ordem ascendente
-- ASC=ascendente;DESC=descendente.
-- Se não definida a ordem adotada será a ASC;
SELECT al.cod_aluno AS cod ,
	   al.nome_aluno AS nome
FROM tbaluno al
ORDER BY al.nome_aluno ASC
;
GO

-- ------------------------CRITÉRIOS (WHERE)--------------------------
-- Utilizamos critérios para filtrar dados de um select
-- Exemplo 1: LIKE=busca textual; %=coringa, qualquer valor
-- filtrar as pessoas com f no nome
SELECT al.cod_aluno AS cod ,
	   al.nome_aluno AS nome
FROM tbaluno al
WHERE nome_aluno LIKE ('f%')
ORDER BY al.nome_aluno ASC
;
GO

-- Exemplo 2: AND=E=critério EXcludente
-- O registro tem que atender a 2 ou mais critérios
-- Alunos com b no meio do nome e com rua e nº 1 no end
SELECT al.cod_aluno AS cod ,
	   al.nome_aluno AS nome,
	   al.end_aluno AS endereço
FROM tbaluno al
WHERE nome_aluno LIKE ('%b%') AND end_aluno LIKE ('RUA%1%') 
ORDER BY al.nome_aluno ASC
;
GO

-- Exemplo 3: OR=OU=critério INcludente
-- O registro deve atender a 1 ou outro critério
-- 	Alunos com código=1 ou n.º6 no endereço

SELECT al.cod_aluno AS cod ,
	   al.nome_aluno AS nome,
	   al.end_aluno AS endereço
FROM tbaluno al
WHERE cod_aluno = 1 OR end_aluno LIKE ('%6%') 
ORDER BY al.nome_aluno ASC
;
GO

-- ----------------VALORES MÁXIMOS E MÍNIMOS------------------
-- Exemplo 1: seleciona o MAIOR valor (data_nas_aluno)
SELECT MAX(al.data_nas_aluno) AS maior_data
FROM tbaluno al;
GO
-- Exemplo 2: seleciona o MENOR valor*/
SELECT MIN(al.data_nas_aluno) AS menor_data
FROM tbaluno al;
GO

-- -------VALORES NÃO DUPLICADOS, NULOS E NÃO NULOS----------
-- Exemplo 1: valores não duplicados.
SELECT DISTINCT(al.nome_aluno)
FROM tbaluno al
ORDER BY al.nome_aluno ASC;
GO

-- Exemplo 2: valores não nulos.
SELECT DISTINCT(al.nome_aluno)
FROM tbaluno al
WHERE al.data_nas_aluno IS NOT NULL
ORDER BY al.nome_aluno ASC;
GO

