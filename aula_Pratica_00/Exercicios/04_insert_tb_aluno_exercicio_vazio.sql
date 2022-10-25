-- -------------------EXERCITANDO INSERT E SELECT---------------------
-- Salve como: 04_insert_tb_aluno_exercicio.sql
-- Crie uma inserção de dados na tabela aluno, em seguida
-- a exibição de todos os dados da tabela no mesmo código
-- João da Silva, Rua sobe e desce, 60, 15-998009000, 01/07/1959
USE escola14
GO
---------------------INSERT TABELA ALUNO---------------------
INSERT INTO tbaluno
	(nome_aluno, end_aluno,fone_aluno,data_nas_aluno)
	VALUES
	('João da Silva',
	'Rua sobe e desce, 60',
	'15-998009000',
	'01/07/1959'
	);
-----------------------SELECT TUDO---------------------
GO 
SELECT * 
	FROM tbaluno;