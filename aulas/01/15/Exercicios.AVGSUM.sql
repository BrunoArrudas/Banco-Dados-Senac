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