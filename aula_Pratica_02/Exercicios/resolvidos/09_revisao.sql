USE escola14
GO
-- DROP TABLE tbcidade;
/* ----------------EXERC�CIO DE REVIS�O------------------
1. Crie uma tabela cidade com as seguintes caracter�sticas:
	c�digo cidade inteiro n�o nulo (Identity=n�o duplicado),
	nome da cidade 30 caracteres n�o requerido,
	uf da cidade 02 caracteres n�o requerido;

2. No mesmo c�digo insira as cidades:
	Itapetininga, Alambari, Jacarei, Tatui e Cap�o Bonito;
	
3. Atualize a cidade de Jacarei para Sarapui;

4. Exiba todas as cidades em ordem alfab�tica ascendente.

5. Exiba o nome das cidades terminadas com "ui".

Salve como: 09_revisao.sql	*/


-- ------------------- CRIA��O TABELA CIDADE ---------------------
CREATE TABLE tbcidade( 
	cod_cidade INT IDENTITY(1,1) NOT NULL,
	nome_cidade VARCHAR(30) NULL, 
	uf_cidade VARCHAR(2) NULL
);
GO
-- -------------------INSER��O TABELA CIDADE---------------------
INSERT INTO tbcidade
	(nome_cidade,uf_cidade)
	VALUES
	('Itapetininga','SP'),
	('Alambari','SP'),
	('Jacarei','SP'),
	('Tatui','SP'),
	('Cap�o Bonito','SP')
	;
GO
-- -------------------ATUALIZA��O TABELA CIDADE---------------------
UPDATE tbcidade SET nome_cidade ='Sarapui'
WHERE nome_cidade LIKE 'Jacarei';
GO
-- ----------------SELE��O ORDENADA TABELA CIDADE------------------
SELECT tbcidade.nome_cidade
FROM tbcidade
ORDER BY tbcidade.nome_cidade ASC
;
GO
-- ----------------SELE��O CRIT�RIO TABELA CIDADE------------------
SELECT tbcidade.nome_cidade
FROM tbcidade
WHERE nome_cidade LIKE ('%ui')
ORDER BY tbcidade.nome_cidade ASC
;
GO
