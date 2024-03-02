USE localidades;

#1 
-- FAÇA UMA JUNÇÃO DA TABELA CIDADE E ESTADO, MOSTRANDO:
-- NOME DA CIDADE, SIGLA DO ESTADO. APENAS NAS CIDADES QUE TEM ESTADO

SELECT CIDADE.Nome, ESTADO.Sigla
FROM CIDADE
INNER JOIN ESTADO ON CIDADE.Estado_Id = ESTADO.Id;
-- ----------------------------------------------------------------------------

# 2
-- FAÇA UMA JUNÇÃO DA TABELA CIDADE E ESTADO, MOSTRANDO:
-- NOME DA CIDADE, SIGLA DO ESTADO. TODAS AS CIDADES, INDEPENDENTE DE TEREM ESTADO

SELECT CIDADE.Nome, ESTADO.Sigla
FROM CIDADE
LEFT JOIN ESTADO ON CIDADE.Estado_Id = ESTADO.Id;
-- ----------------------------------------------------------------------------

# 3
-- FAÇA UMA JUNÇÃO DA TABELA CIDADE E ESTADO, MOSTRANDO:
-- NOME DA CIDADE, SIGLA DO ESTADO. MOSTRE TODOS OS ESTADOS, INDEPENDENTE DE TEREM CIDADES

SELECT CIDADE.Nome, ESTADO.Sigla
FROM CIDADE
RIGHT JOIN ESTADO ON CIDADE.Estado_Id = ESTADO.Id;

INSERT INTO ESTADO (Nome, Sigla) VALUES
('Maranhão','MA'),
('Rio Grande do Sul','RS'),
('Mato Grosso','MT'),
('Alagoas','AL');
INSERT INTO ESTADO (Nome, Sigla) VALUES
('Mato Grosso do Sul','MS'),
('Acre', 'AC'),
('Amazonas','AM');
-- --------------------------------------------------------------------------------------------
 
# 4
-- FAÇA UMA JUNÇÃO DA TABELA CIDADE, ESTADO E PREFEITO:
-- CIDADE.NOME, ESTADO.SIGLA/UF, PREFEITO.NOME, PREFEITO.DATAPOSSE
-- PARA TODAS AS CIDADES QUE TEM PREFEITO

SELECT CIDADE.Nome, ESTADO.Sigla, PREFEITO.Nome, PREFEITO.DataPosse
FROM CIDADE
INNER JOIN ESTADO ON CIDADE.Estado_Id = ESTADO.ID
INNER JOIN PREFEITO ON CIDADE.Prefeito_Id = PREFEITO.Id;

SELECT * FROM CIDADE;
-- -------------------------------------------------------------------------------------------