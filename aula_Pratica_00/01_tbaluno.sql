-- Criação da Tabela do Aluno --
-- Salvar como:01_tbaluno.sql

USE escola14 -- Define o banco a ser usado
GO			 -- Da continuidade a instrução

CREATE TABLE tbaluno( --Cria a tabela alunos
	cod_aluno INT IDENTITY(1,1) NOT NULL,
	--parametros dos campos , campos separados por virgula 
	--IDENTITY ou AUTO INCREMENTE >> numeração Automatica
	--IDENTITY(1,1) >> (Valor inicial,quantidade de incremento)
	nome_aluno VARCHAR(100) NOT NULL, --NOT NULL = obrigatorio
	end_aluno VARCHAR(80) NULL, --NUL =não obrigatorio
	fone_aluno VARCHAR(14) NULL,
	data_nas_aluno DATE NULL
);--Ponto e virgula indica o fim da clausula