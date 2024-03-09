USE hotel;

-- Selecionar chales com media de capacidade superior a 3
SELECT codChale, AVG(capacidade) AS capacidade_media
FROM chale
GROUP BY codChale
HAVING capacidade_media > 3;

-- Selecione os clientes com ao menos uma hospedagem registrada
SELECT codCliente, COUNT(*) AS qtd_hospedagens
FROM hospedagem
GROUP BY codCliente
HAVING qtd_hospedagens > 0; -- HAVING é sempre utilizado com GROUP BY

-- Selecionar serviços com valor total superior a 100
SELECT *
FROM servico
GROUP BY valorServico
HAVING valorServico >= 40.00;