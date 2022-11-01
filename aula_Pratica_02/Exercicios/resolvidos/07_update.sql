-- -------------------UPDATE DE DADOS---------------------
-- Salvar como: 07_update.sql
-- UPDATE faz uma atualização de dados com base em um valor
-- EXEMPLO 1: Atualizar o endereço do cod_aluno 1 para
-- Rua Monteiro Lobato, 1000
UPDATE tbaluno SET end_aluno ='Rua Monteiro Lobato, 1000'
WHERE cod_aluno = 1;

USE escola14
GO

-- -------------------EXERCITANDO UPDATE----------------------
-- 1. Modifique o nome do aluno 1 para BILL GATES
-- UPDATE atualiza dados ,SET - configuração / campo
--Esse valor sera determinado após a atualização
UPDATE tbaluno SET nome_aluno ='BILL GATES'
WHERE cod_aluno = 1;
--WHERE onde , ou seja registro a atualizar 
--WHERE é uma clausula com Varios Operadores
--UPDATE sem where atualiza todos os dados da tabela


-- 2. Modifique e exiba o código do aluno 1 para 101;
UPDATE tbaluno SET cod_aluno = 101
WHERE cod_aluno = 1;
-- Não é possivel devido ao autonumerador  (Identity)

-----------------Verificando update-----------
SELECT * FROM tbaluno;

-----Exiba o codigo, nome  e o endereço do aluno 
-----filtre os dados para o aluno 1
SELECT al.cod_aluno AS código,
	   al.nome_aluno AS Nome,
	   al.end_aluno AS Endereço 
FROM   tbaluno AS al
WHERE  al.cod_aluno = 1 OR al.cod_aluno = 4;
;
-- É possivel colocar rotulos em tabelas e campos
-- Exemplos:tbalunos as al>> al é o rotulo/alias/apelido
--para especificar o campo utilize  nomedatabela/apelido.campo






