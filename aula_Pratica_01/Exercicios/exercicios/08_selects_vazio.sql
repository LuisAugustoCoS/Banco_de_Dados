-- -------------------MAIS SELECTS---------------------
-- O SELECT é uma das cláusulas mais diversificadas;.
-- Usamos select para filtrar, classificar, calcular;
-- juntar informações de tabelas diferentes, verificar 
-- valores e até ranquear informações.
-- Por isso vamos exercitar muuuuuuiiiiiiittoooo o SELECT.
/*Salve como: 08_selects.sql*/
USE escola
GO
-- Exemplo 1: selecionar todos os dados da tabela


-- Exemplo 2: selecionar apenas campos determinados (cod e nome)


-- Exemplo 3 (ORDER BY): selecionar o nome em ordem ascendente
-- ASC=ascendente;DESC=descendente.
-- Se não definida a ordem adotada será a ASC;

-- ------------------------CRITÉRIOS (WHERE)--------------------------
-- Utilizamos critérios para filtrar dados de um select
-- Exemplo 1: LIKE=busca textual; %=coringa, qualquer valor
-- filtrar as pessoas com f no nome

-- Exemplo 2: AND=E=critério EXcludente
-- O registro tem que atender a 2 ou mais critérios
-- Alunos com b no meio do nome e com rua e nº 1 no end

-- Exemplo 3: OR=OU=critério INcludente
-- O registro deve atender a 1 ou outro critério
-- 	Alunos com código=1 ou n.º6 no endereço

-- ----------------VALORES MÁXIMOS E MÍNIMOS------------------
-- Exemplo 1: seleciona o MAIOR valor (data_nas_aluno)


-- Exemplo 2: seleciona o MENOR valor*/


-- -------VALORES NÃO DUPLICADOS, NULOS E NÃO NULOS----------
-- Exemplo 1: valores não duplicados.


-- Exemplo 2: valores não nulos.


