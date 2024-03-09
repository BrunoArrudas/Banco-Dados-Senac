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

-- Criar uma view
CREATE VIEW ViewMediaCapacidade AS
SELECT codChale, AVG(capacidade) AS media_capacidade
FROM chale
GROUP BY codChale;

-- Selecionar dados de uma View
SELECT * FROM ViewMediaCapacidade;

--  Crie uma view que informe aos dados da hospedagem, com os dados do cliente, incluindo o telefone
CREATE VIEW ViewHospedagemDadosCliente AS
SELECT hospedagem.*, cliente.nomeCliente, telefone.telefone
FROM hospedagem
LEFT JOIN cliente ON hospedagem.codCliente = cliente.codCliente
INNER JOIN telefone ON cliente.codCliente = telefone.codCliente;

-- Consulte a view 
SELECT * FROM ViewHospedagemDadosCliente;

-- Criar um indice na coluna codCliente da tabela telefone
CREATE INDEX idx_codCliente ON telefone(codCliente);


