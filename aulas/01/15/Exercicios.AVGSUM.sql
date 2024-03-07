USE compras;

-- -------------------------------------
-- SELECT COM CONTAGEM TOTAL DE REGISTROS
SELECT COUNT(*) AS Total_Pedidos
FROM pedido;

-- -------------------------------------
-- SELECT TUDO DA TABELA X
SELECT * FROM pedido;

-- -------------------------------------

SELECT DISTINCT ClienteID, dataPedido
FROM pedido;

-- -------------------------------------
-- SELECT QUANTOS PEDIDOS CADA CLIENTE FEZ
SELECT ClienteID, COUNT(*)
FROM pedido
GROUP BY ClienteID;

-- -------------------------------------
-- SELECIONAR O TOTAL DE PRODUTOS POR PEDIDO
SELECT pedidoId, COUNT(*) AS ProdutosPorPedido
FROM itenspedido
GROUP BY pedidoId;

-- -------------------------------------
-- SELECIONAR PRODUTOS MAIS VENDIDOS
SELECT * FROM itenspedido;

SELECT produtoId, SUM(quantidade)
FROM itenspedido
GROUP BY produtoId;

SELECT produtoId, SUM(quantidade) AS MaisVendidos
FROM itenspedido
GROUP BY produtoId
ORDER BY MaisVendidos DESC;

-- -------------------------------------
-- LISTE OS CLIENTES INFORMANDO: TOTAL GASTO, MEDIA DE PRODUTOS, DATA DO PRIMEIRO E ULTIMO PEDIDO. 

SELECT
pedido.clienteId, cliente.nome,
COUNT(*) AS NumPedidos,
SUM(produto.preco*itenspedido.quantidade) AS TotalGasto,
AVG(itenspedido.quantidade) AS MediaProdutosPorPedido,
MIN(pedido.dataPedido),
MAX(pedido.dataPedido)
FROM pedido
JOIN itenspedido ON pedido.id = itenspedido.pedidoId
JOIN produto ON itenspedido.produtoId = produto.id
JOIN cliente ON cliente.id = pedido.id
GROUP BY pedido.clienteId;

SELECT * FROM pedido;

-- -----------------------------------------------------
-- Encontrar produtos com o preço entre 50 e 150 reais
SELECT *
FROM produto
WHERE preco >= 50 AND preco <= 150;

SELECT * FROM produto
WHERE preco BETWEEN 50 AND 150; -- Entre valores.

-- -----------------------------------------------------
-- Mostre tudo dos produtos com ID 1, 5 e 7
SELECT *
FROM produto 
WHERE id = 1 OR id = 5 OR id = 7;

SELECT * FROM produto
WHERE id IN(1, 3, 7); -- Seleciona da mesma forma que o OR so que de forma mais optimizada.

-- ------------------------------------------------------
-- Mostre todos os clientes que o sobrenome termine com "a".

SELECT * FROM cliente
WHERE sobrenome LIKE '%a';

-- --------------------------------------------------------
-- Mostre os 5 produtos mais caros da loja
SELECT * FROM produto;

SELECT* FROM produto
ORDER BY preco DESC
LIMIT 5;   -- Limita quantos resultados a busca ira ter. 

-- --------------------------------------------------------
-- Listando os produtos por pagina, cada pagina cabendo 2 produtos, me mostre a pagina 3
SELECT * FROM produto
LIMIT 2 OFFSET 8; -- No offset ele corta a partir do inicio da lista

-- ---------------------------------------------------------
-- Consultar os pedidos feitos entre 2024-03-01 e 2024-03-05, limitando a 5 resultados

SELECT * FROM pedido
WHERE dataPedido BETWEEN  '2024-03-01'AND '2024-03-05' LIMIT 5;

-- --------------------------------------------------------- 