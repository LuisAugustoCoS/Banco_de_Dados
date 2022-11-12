-- ------------------- ALTERANDO TABELAS ---------------------
-- ALTER TABLE: Altera, insere, exclui propriedades da tabela
/*Salvar como 13_alter_table.sql e utilize a tabela tbClientes.*/
USE vendas14
GO

-- ------------------- ADICIONANDO CAMPOS ---------------------
-- Iremos adicionar os campos valor_limite_prazo e valor_limite_cartao
-- Ambos decimal (9,2)
ALTER TABLE tbClientes
	-- ADD: adiciona um campo a tabela
ADD
	valor_limite_cartao DECIMAL(9,2);
GO
-- ----------------- EXERCITANDO ALTER TABLE ADD -------------------
-- Adicione mais 3 campos a tabela clientes:
-- restricao_cliente(1) (CHECK 'S' OR 'N'), 
-- autorizado1_cliente(80) e autorizado2_cliente(80)
ALTER  TABLE tbClientes
	-- ADD: adiciona um campo a tabela
ADD restricao_cliente VARCHAR(1)CHECK(restricao_cliente='S' OR restricao_cliente='N'), 
	autorizado1_cliente VARCHAR(80),
	autorizado2_cliente VARCHAR(80);

-- Apagar a coluna valor_limite_cartao
-- DROP: apaga um item ou mesmo a tabela
-- DROP COLUMN apaga a coluna 
ALTER  TABLE tbClientes
DROP COLUMN valor_limite_cartao;
GO

SELECT * FROM tbClientes;
