-- ------------------- APAGANDO DADOS DA TABELA ---------------------
-- /*Salvar como 14_delete.sql e utilize a tabela tbClientes.*/
USE vendas14
GO
-- ------------------- DELETANDO DADOS ---------------------

/*SE NÃO FOR UTILIZADA A CLÁUSULA WHERE
SÃO DELETADAS TODAS AS LINHAS DA TABELA*/
DELETE tbClientes 
WHERE nome_cliente LIKE ('%DELETAR%');
GO

-- ------------------- LIMPANDO A TABELA ---------------------
/*Apaga todos os dados da tabela e seus índices*/
TRUNCATE TABLE tbClientes
GO

-- ------------------- APAGANDO A TABELA ---------------------
/*Apaga a tabela e toda a sua estrutura*/
DROP TABLE tbClientes
GO

-- ------------------- VERIFICANDO A TABELA ---------------------
SELECT * FROM tbClientes;
GO

-- Após esta atividade executar novamente a criação e atualização da tbClientes.
/*IF NOT EXISTS(
	SELECT * FROM sysobjects
	WHERE NAME = 'tbClientes' AND xtype ='U')
	CREATE TABLE tbClientes(
	cod_clientes INT IDENTITY NOT NULL,
	nome VARCHAR(80),
	end_cliente VARCHAR(80),
	bairro_cliente VARCHAR(50),
	cidade_cliente VARCHAR(50),
	uf_cliente VARCHAR(2),
	fone_cliente VARCHAR(11),
	cpf_cliente VARCHAR (22),
	rg_cliente VARCHAR(22),
	data_nas_cliente DATE,
	sexo_cliente VARCHAR (1)
		CHECK(sexo_cliente='m' OR sexo_cliente='f'),
		-- CHECK cria um combo com opções restritas
	email_cliente VARCHAR (60),
	valor_limite_avista DECIMAL (9,2),
	-- MODIFICAÇÃO PARA SER CHAVE PRIMÁRIA
	CONSTRAINT client_pk PRIMARY KEY (cod_clientes)
	);

	GO
	INSERT INTO tbClientes VALUES ('Francisco da Silva Xavier','rua antonio de almeida 500','jd vieira de moraes','Itapetininga','SP','15 96721123','360.282.468-32','123456798','13/08/1987','M','willianalbinolima@bol.com.br',1500.00);
INSERT INTO tbClientes VALUES ('Pedro Alvares Cabral','LINDOLFO MACHADO DE ABULQUERQUE','VILA SANTANA','ITAPETININGA','SP','15 97981659','15615615641','','01/06/1989','m','sims.cbj@hotmail.com',750.00);
INSERT INTO tbClientes VALUES ('Anna Karenina','rua gilberto loretti 106','são cristóvão','TATUÍ','SP','15975622415','12446314895','','07/10/1991','f','gabriela.7427@yahoo.com.br',890.00);
INSERT INTO tbClientes VALUES ('Margareth Thatcher','RUAZENOM ARANTES GALVÃO','BELA VISTA','ITAPETININGA','SP','15997975154','36016652552','','31/10/1987','f','PRI_TCHOS@HOTMAIL.COM',2500.00);
INSERT INTO tbClientes VALUES ('José Bonifácio Prestes','AV: PADRE ANTONIO BRUNETTI','VILA SONIA','ITAPETININGA','SP','','41862199825','','20/06/1192','m','lucas.augustohp@gmail.com',360.00);
INSERT INTO tbClientes VALUES ('Fernando Prestes','RUA PROF JOSE DA CONCEICAO HOLTZ N 274','CENTRO','SARAPUI','SP','15032761302','11222145146','','16/06/1992','m','rafael.p.o@hotmail.com',1350.00);
INSERT INTO tbClientes VALUES ('Steve Wonder','RUA MAJOR CABRAL 474','CENTRO','ALAMBARI','SP','15 91240815','21111321651','','28/09/1980','m','IWANEZUK@HOTMAIL.COM',1246.00);
INSERT INTO tbClientes VALUES ('Ulisses Guimarães','RUA SEBASTIÃO CHIOQUETTI','JARDIM DAS ROSAS','ITAPETININGA','SP','15 98051657','38995383038','','25/2/1990','m','LUCASCCV_INDIO@HOTMAIL.COM',1450.00);
INSERT INTO tbClientes VALUES ('Fulano de Tal Prestes','rua do sobe desce 70','bocó','ITAPETININGA','SP','15933566541','12356815244','','01/01/1960','m','',3000.00);
INSERT INTO tbClientes VALUES ('DELETAR DEPOIS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);*/
USE master
GO
DROP DATABASE vendas14