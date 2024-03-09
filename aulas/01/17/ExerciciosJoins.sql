USE hotel;
-- ----------------------------------------------------------------------------------------------------
-- Consultas sem JOINS

-- Consulte todos os clientes de São Paulo(SP)
SELECT *
FROM cliente
WHERE estadoCliente = 'SP';

-- Selecionar hospedagens com mais de 3 pessoas e desconto igual a 0
SELECT *
FROM hospedagem
WHERE qtdPessoas >= 3 AND desconto = 0;

-- Selecionar telefones de clientes com ID 1 ou 2, limitando a 2 resultados
SELECT *
FROM telefone
WHERE codCliente = 1 OR codCliente= 2 LIMIT 2;

-- Selecionar chales com capacidades entre 4 e 6, ordenados por valor em alta estação 
SELECT * 
FROM chale
WHERE capacidade BETWEEN 4 AND 6 
ORDER BY valorAltaEstacao DESC;

--  Selecione todos os itens que contenham "de" na descrição, pulando os 2 primeiros resultados
SELECT *
FROM item
WHERE descricaoItem LIKE '%de%' LIMIT 13 OFFSET 2;

-- --------------------------------------------------------------------------------------------------
-- Consultas com JOINS

-- Selecionar detalhes da hospedagem, incluindo informações do cliente
SELECT hospedagem.*, Cliente.nomeCliente
FROM hospedagem
Join Cliente ON Hospedagem.codCliente = Cliente.codCliente;

-- Selecionar chalés com os itens associados
SELECT *
FROM chale
JOIN chale_item ON chale_item.codchale = chale.codchale
JOIN item ON chale_item.nomeItem = item.nomeItem;

-- Selecionar serviços utilizados em uma hospedagem
SELECT *
FROM hospedagem_servico
JOIN servico ON hospedagem_servico.codServico = servico.codServico;
-- WHERE hospedagem_servico.codHospedagem = 1;

-- Consultar os clientes com seus telefones
SELECT *
FROM cliente
JOIN telefone ON cliente.codCliente = telefone.codCliente;
-- SELECT Cliente.*, GROUP_CONCAT(TELEFONE.TELEFONE)AS TELEFONE
-- LEFT JOIN Telefone ON Cliente.codCliente = telefone.codCliente

-- Selecionar chalés ocupados em uma data específica 2024-07-18
SELECT chale.*, hospedagem.dataInicio, hospedagem.dataFim
FROM chale
JOIN Hospedagem ON chale.codChale = Hospedagem.codChale
WHERE '2024-07-18' BETWEEN hospedagem.dataInicio AND hospedagem.dataFim;

-- Cross Join
SELECT chale.*, servico.*
FROM chale
CROSS JOIN servico; 

SELECT cliente.*, telefone.*
FROM cliente
CROSS JOIN telefone ON cliente.codCliente = telefone.codCliente; 


