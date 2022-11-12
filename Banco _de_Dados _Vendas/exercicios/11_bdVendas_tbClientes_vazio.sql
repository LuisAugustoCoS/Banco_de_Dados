------------------BANCO DE DADOS VENDAS------------------
/*Criaremos o o Banco Vendas e a tabela Clientes*/
/*Exercício salvar como 11_bdVendas_tbClientes.sql
1. Crie um banco de dados chamado vendas...;
2. Crie a tabela Clientes (tbClientes)
	cod_cliente identity e chave primária
	nome(80), end(80), bairro(50), cidade(50), uf(2),
	fone(11), cpf(22), rg(22), data_nas_cliente(date), .
	sexo(1)e(check'm' or 'f'), email_cliente(60),
	valor_limite_avista numeric(9,2);
3. Insira os dados de insert_tbClientes;
4. Liste todos os clientes em ordem alfabética;
*/
-- ------------------- CRIAÇÃO E USO DO BANCO---------------------
-- CREATE DATABASE vendas14
-- GO

USE vendas14
GO
-- ------------------- CRIAÇÃO TABELA CLIENTES ---------------------

-- ---------------CHAVE PRIMÁRIA(Primary Key ou PK)------------------
-- A chave primária irá tornar o campo único e indexador
-- permite o relacionamento dos dados através  de um id
-- possibilita também o uso de Chave Estrangeira

IF NOT EXISTS(
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

-- -------------------DELETAR CHAVE PRIMÁRIA---------------------
-- deleta A CHAVE PRIMÁRIA da tabela tbClientes, não o campo
-- ALTER TABLE tbClientes
-- DROP CONSTRAINT cliente_pk;


-- -------------------DELETAR TABELA E SUA ESTRUTURA---------------------
-- deleta a tabela tbClientes por completo;
-- DROP TABLE tbClientes;

-- ------------------- INSERINDO DADOS NA TABELA CLIENTES ---------------------
INSERT INTO tbClientes VALUES ('Francisco da Silva Xavier','rua antonio de almeida 500','jd vieira de moraes','Itapetininga','SP','15 96721123','360.282.468-32','123456798','13/08/1987','M','willianalbinolima@bol.com.br',1500.00);
INSERT INTO tbClientes VALUES ('Pedro Alvares Cabral','LINDOLFO MACHADO DE ABULQUERQUE','VILA SANTANA','ITAPETININGA','SP','15 97981659','15615615641','','01/06/1989','m','sims.cbj@hotmail.com',750.00);
INSERT INTO tbClientes VALUES ('Anna Karenina','rua gilberto loretti 106','são cristóvão','TATUÍ','SP','15975622415','12446314895','','07/10/1991','f','gabriela.7427@yahoo.com.br',890.00);
INSERT INTO tbClientes VALUES ('Margareth Thatcher','RUAZENOM ARANTES GALVÃO','BELA VISTA','ITAPETININGA','SP','15997975154','36016652552','','31/10/1987','f','PRI_TCHOS@HOTMAIL.COM',2500.00);
INSERT INTO tbClientes VALUES ('José Bonifácio Prestes','AV: PADRE ANTONIO BRUNETTI','VILA SONIA','ITAPETININGA','SP','','41862199825','','20/06/1192','m','lucas.augustohp@gmail.com',360.00);
INSERT INTO tbClientes VALUES ('Fernando Prestes','RUA PROF JOSE DA CONCEICAO HOLTZ N 274','CENTRO','SARAPUI','SP','15032761302','11222145146','','16/06/1992','m','rafael.p.o@hotmail.com',1350.00);
INSERT INTO tbClientes VALUES ('Steve Wonder','RUA MAJOR CABRAL 474','CENTRO','ALAMBARI','SP','15 91240815','21111321651','','28/09/1980','m','IWANEZUK@HOTMAIL.COM',1246.00);
INSERT INTO tbClientes VALUES ('Ulisses Guimarães','RUA SEBASTIÃO CHIOQUETTI','JARDIM DAS ROSAS','ITAPETININGA','SP','15 98051657','38995383038','','25/2/1990','m','LUCASCCV_INDIO@HOTMAIL.COM',1450.00);
INSERT INTO tbClientes VALUES ('Fulano de Tal Prestes','rua do sobe desce 70','bocó','ITAPETININGA','SP','15933566541','12356815244','','01/01/1960','m','',3000.00);
INSERT INTO tbClientes VALUES ('DELETAR DEPOIS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- ------------------- SELECT TABELA CLIENTES ---------------------
SELECT*FROM tbClientes;