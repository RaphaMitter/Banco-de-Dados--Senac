-- SELECT TUDO DA TABELA X
SELECT * FROM PEDIDO;

-- SELECT COM CONTAGEM TOTAL DE REGISTROS
SELECT COUNT(*) AS Total_Pedidos
FROM pedido;

-- SELECT QUANTOS PEDIDOS CADA CLIENTE FEZ
SELECT ClienteID, COUNT(*)
FROM pedido
GROUP BY ClienteID;

-- SELECIONAR O TOTAL DE PRODUTOS POR PEDIDO
SELECT pedidoId, COUNT(*) AS ProdutosPorPedido
FROM itenspedido
GROUP BY pedidoId;

SELECT * FROM itenspedido;

-- SELECIONAR PRODUTOS MAIS VENDIDOS
SELECT produtoId, SUM(quantidade) AS MaisVendidos
FROM itenspedido
GROUP BY produtoId
ORDER BY MaisVendidos DESC;

-- LISTE OS CLIENTES INFORMANDO: 
-- TOTAL GASTO, MEDIA DE PRODUTOS, DATA DO PRIMEIRO E ÚLTIMO PEDIDO

SELECT
 pedido.clienteId,
 COUNT(*) AS NumPedidos,
 SUM(produto.preco * itenspedido.quantidade) AS TotalGasto,
 AVG(itenspedido.quantidade) AS MediaProdutosPedido
 FROM pedido
 JOIN itenspedido ON pedido.id = itenspedido.pedidoId
 JOIN produto ON itenspedido.produtId = produto.id
 GROUP BY pedido.clienteId;
 
 -- Encontrar produtos com o preço entre 50 e 150 reais
 SELECT * 
 FROM produto
 WHERE preco >= 50 AND preco <=150;
 -- OU --
 SELECT * FROM produto
 WHERE preco BETWEEN 50 AND 150;
 
 
 -- Mostre tudo dos produtos com ID 1, 5 e 7
 
 SELECT *
 FROM produto
 WHERE ID = 1 OR ID = 5 OR ID = 7;
 
 -- OU ------
 SELECT * 
 FROM produto
 WHERE ID IN (1,3,7);
 
 -- Mostre todos os cliente que o sobrenome termine com "A"
 SELECT * FROM cliente
 WHERE sobrenome LIKE '%a';
  
 -- Mostre os 5 produtos mais caros da loja
 SELECT * FROM produto
ORDER BY preco DESC
LIMIT 5;

-- Listando os produtos por página, cada página cabendo 2 produtos, me mostre a página 3

SELECT * FROM produto
LIMIT 2 OFFSET 4;

-- Consultar os pedidos feitos entre 2024-03-01 e 2024-03-05, limitando a 5 resultados

SELECT * FROM pedido;

 