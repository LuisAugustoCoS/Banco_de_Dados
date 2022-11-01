USE escola14
GO
TRUNCATE TABLE tbcidade;
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
	nome_cidade VARCHAR(30) NOT NULL, 
	uf_cidade VARCHAR(2) NOT NULL
);
GO
-- -------------------INSER��O TABELA CIDADE---------------------
INSERT INTO tbcidade
	( nome_cidade,uf_cidade)
	VALUES
	--inserir os dados na mesma ordem dos registros acima
	('Itapetininga','SP'),
	('Alambari','SP'),
	('Jacarei','SP'),
	('Tatui','SP'),
	('Cap�o Bonito','SP')
	;
GO
-- -------------------ATUALIZA��O TABELA CIDADE---------------------
UPDATE tbcidade SET nome_cidade ='Sarapui'
WHERE cod_cidade = 3;

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
