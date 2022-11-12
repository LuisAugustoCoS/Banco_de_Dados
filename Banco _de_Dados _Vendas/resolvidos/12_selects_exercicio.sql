-- ------------------- EXERCITANDO SELECTS ---------------------
-- Salvar como 12_selects_exercicio.sql e utilize a tabela tbClientes.*/
USE vendas14
GO
-- 1.Exiba a menor e maior data de nascimento dos clientes.
	-- AS=alias ou apelido,nomeia o campo
	SELECT MIN(cl.data_nas_cliente) AS menor_data,
		   MAX(cl.data_nas_cliente) AS maior_data
	FROM  tbClientes AS cl
GO

-- 2.Exiba os clientes começados com "p".
	SELECT cl.*
	FROM  tbClientes AS cl
	WHERE cl.nome_cliente LIKE ('p%')
	GO

-- 3.Exiba os clientes com "prestes" no meio organizado por nome.
	SELECT cl.*
	FROM  tbClientes AS cl
	WHERE cl.nome_cliente LIKE ('%prestes%') 
	ORDER BY cl.nome_cliente ASC;
	GO
-- 4.Exiba os clientes com código 4 ou 7.
SELECT cl.*
FROM  tbClientes AS cl
WHERE cl.cod_cliente =4 or cl.cod_cliente =7;
ORDER BY cl.nome_cliente ASC;
GO

-- 5.Exiba os clientes com a letra "a no meio" do sexo feminino.
SELECT cl.*
FROM  tbClientes AS cl
WHERE cl.nome_cliente LIKE ('%a%') AND cl.sexo_cliente='f'; 
ORDER BY cl.nome_cliente ASC;
GO
-- ------------------- NOVOS SELECTS ---------------------
-- 6.Nome e data de nascimento dos clientes entre 1990 e 1997.
	-- BETWEEN=Seleciona intervalos de dados
SELECT cl.nome_cliente,
	   data_nas_cliente
FROM  tbClientes AS cl
WHERE cl.data_nas_cliente BETWEEN '01/01/1990' AND '31/12/1997';
GO

-- 7.Troque o rótulo de cod_cliente > código e nascto_clientes > nascimento
-- e exiba os clientes com código maior que 3.
SELECT cl.nome_cliente AS nome,
	   data_nas_cliente AS nascimento,
	   cl.cod_cliente AS codigo
FROM  tbClientes AS cl
WHERE cl.cod_cliente >3;
GO
-- 8.Exiba 3 itens de registro ao mesmo tempo do nome e limite.
SELECT cl.nome_cliente AS nome,
	   cl.cod_cliente AS codigo,
	   cl.valor_limite_avista AS limite
FROM  tbClientes AS cl
WHERE cl.valor_limite_avista IN (750,1500,3000);
GO

-- 9.Selecione um campo com valor nulo.
SELECT cl.*
FROM  tbClientes AS cl
WHERE cl.fone_cliente IS NULL OR cl.fone_cliente LIKE ('');
GO

-- 10.Exiba campos sem repetição (cidade).
SELECT DISTINCT(cl.cidade_cliente) AS cidade
FROM  tbClientes AS cl
WHERE cl.fone_cliente IS  NOT NULL;
GO
-- 11.Conte os itens sem repetição (qtde_cidades).
SELECT COUNT(DISTINCT(cl.cidade_cliente)) AS cidade
FROM  tbClientes AS cl
WHERE cl.fone_cliente IS  NOT NULL;
GO
-- 12.Agrupe por sexo e conte os itens.
-- se temos um campo listado e uma expressao
--obrigatoriamente será GROUP BY
SELECT cl.sexo_cliente AS sexo,
 COUNT(cl.sexo_cliente)
FROM  tbClientes AS cl
WHERE cl.sexo_cliente IS NOT NULL 
GROUP BY cl.sexo_cliente
ORDER BY cl.sexo_cliente ASC;
GO
-- 13.Agrupe por cidade e conte os itens.
-- se temos um campo listado e uma expressao
--obrigatoriamente será GROUP BY
SELECT cl.cidade_cliente AS cidade,
 COUNT(cl.cidade_cliente)
FROM  tbClientes AS cl
WHERE cl.cidade_cliente IS NOT NULL 
GROUP BY cl.cidade_cliente
ORDER BY cl.cidade_cliente ASC;