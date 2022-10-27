-- -------------------EXERCITANDO INSERT MULTIPLO---------------------
-- Salve como: 05_insert_multiplo.sql
-- Crie uma inserção de dados na tabela aluno, em seguida
-- a exibição de todos os dados da tabela no mesmo código
-- João da Silva, Rua sobe e desce, 60, 15-998009000, 01/07/1959
USE escola14
GO
---------------------INSERT TABELA ALUNO---------------------
INSERT INTO tbaluno
	(nome_aluno, end_aluno,fone_aluno,data_nas_aluno)
		 -- Especificar o campo e a ordem de inserção
	VALUES
		 -- Inserir os dados na mesma orden dos regitros
	('JOSE ANTONIO','RUA 13 DE MAIO ,13','1532741000','08/01/1963'),
	('MARIA JOSE ','PRAÇA JOAQUIM, 01','1532741101','20/12/1927');
-----------------------SELECT TUDO---------------------
GO 
SELECT * 
	FROM tbaluno;