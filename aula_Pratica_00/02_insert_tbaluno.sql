-- Insert TABELA ALUNO --
-- Salvar como: 02_insert_tbaluno.sql
USE escola14
GO
INSERT INTO tbaluno -- Insira dados na tabela aluno
	(nome_aluno, end_aluno,fone_aluno,data_nas_aluno)
	--especificações dos campos 
	-- o codigo é autonumeração (IDENTITY) portanto automatico
	VALUES
	--inserir os dados na mesma ordem dos registros acima
	('Luis Augusto da Costa Sousa',
	'Alameda sempre verde, 420',
	'15998259622',
	'05/10/2000'
	);