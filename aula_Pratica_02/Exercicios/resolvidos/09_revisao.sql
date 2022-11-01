USE escola14
GO
TRUNCATE TABLE tbcidade;
/* ----------------EXERCÍCIO DE REVISÃO------------------
1. Crie uma tabela cidade com as seguintes características:
	código cidade inteiro não nulo (Identity=não duplicado),
	nome da cidade 30 caracteres não requerido,
	uf da cidade 02 caracteres não requerido;

2. No mesmo código insira as cidades:
	Itapetininga, Alambari, Jacarei, Tatui e Capão Bonito;
	
3. Atualize a cidade de Jacarei para Sarapui;

4. Exiba todas as cidades em ordem alfabética ascendente.

5. Exiba o nome das cidades terminadas com "ui".

Salve como: 09_revisao.sql	*/


-- ------------------- CRIAÇÃO TABELA CIDADE ---------------------
CREATE TABLE tbcidade( 
	cod_cidade INT IDENTITY(1,1) NOT NULL,
	nome_cidade VARCHAR(30) NOT NULL, 
	uf_cidade VARCHAR(2) NOT NULL
);
GO
-- -------------------INSERÇÃO TABELA CIDADE---------------------
INSERT INTO tbcidade
	( nome_cidade,uf_cidade)
	VALUES
	--inserir os dados na mesma ordem dos registros acima
	('Itapetininga','SP'),
	('Alambari','SP'),
	('Jacarei','SP'),
	('Tatui','SP'),
	('Capão Bonito','SP')
	;
GO
-- -------------------ATUALIZAÇÃO TABELA CIDADE---------------------
UPDATE tbcidade SET nome_cidade ='Sarapui'
WHERE cod_cidade = 3;

-- ----------------SELEÇÃO ORDENADA TABELA CIDADE------------------
SELECT tbcidade.nome_cidade
FROM tbcidade
ORDER BY tbcidade.nome_cidade ASC
;
GO

-- ----------------SELEÇÃO CRITÉRIO TABELA CIDADE------------------
SELECT tbcidade.nome_cidade
FROM tbcidade
WHERE nome_cidade LIKE ('%ui')
ORDER BY tbcidade.nome_cidade ASC
;
GO
