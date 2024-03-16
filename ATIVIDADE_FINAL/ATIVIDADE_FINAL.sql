################## DDL
-- 1. Crie uma tabela chamada Fornecedor para armazenar informações sobre os fornecedores do sistema.
-- id, nome, endereço, telefone, email e uma observação (text)
CREATE TABLE fornecedor(
id INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(100) NOT NULL,
Endereco VARCHAR(100),
Telefone VARCHAR(20),
Email VARCHAR(100),
Descricao TEXT
);

-- 2. Adicione uma coluna chamada CNPJ à tabela Fornecedor para armazenar os números de CNPJ dos fornecedores.
ALTER TABLE sistema_vendas.fornecedor
ADD COLUMN Cnpj VARCHAR(100);

-- 3. Adicione uma chave estrangeira à tabela Fornecedor para relacioná-la à tabela Categoria, representando a categoria do fornecedor.
ALTER TABLE fornecedor
ADD COLUMN categoria_iD INT,
ADD FOREIGN KEY (categoria_Id) REFERENCES categoria(Id);

-- 4. Modifique o tipo da coluna Telefone na tabela Fornecedor para armazenar números de telefone com no máximo 15 caracteres.
ALTER TABLE fornecedor
CHANGE Telefone Telefone VARCHAR(15) NOT NULL; 
-- FIZ ESSA MAS NÃO ENTENDI MUITO BEM ESSE CHANGE
 
-- 5. Remova a coluna Observacao da tabela Fornecedor, pois não é mais necessária.
ALTER TABLE fornecedor
DROP COLUMN Descricao;

-- 6. Remova a tabela Fornecedor do banco de dados, se existir.

DROP TABLE IF EXISTS fornecedor;

#################### DML
-- 0. Crie ao menos 5 registros para cada tabela, ignorando o gerneciamento de usuários. Um dos clientes deverá ter o seu nome

-- 1. Atualizar o nome de um cliente:
INSERT INTO cliente (Nome, Email, Telefone, Ativo) VALUES
('RAPHAEL', 'rapha99@hotmail.com', '84549865',1),
('BRUNA', 'bru@hotmail.com', '9654984',1),
('NATALY', 'nathy@hotmail.com', '775499463',1),
('AECIO', 'brito@hotmail.com', '9965498578',1),
('RAFAEL', 'rafa33@hotmail.com', '33354984',1);

SELECT * FROM cliente;

-- 2. Deletar um produto:

DELETE FROM produto WHERE id = 2;


-- 3. Alterar a categoria de um produto:

UPDATE produto 
SET categoriaID = 1 
WHERE id = 6;

-- 4. Inserir um novo cliente:
INSERT INTO clientes (nome, email, telefone, endereco)
VALUES ('Nome do Cliente', 'cliente@email.com', '123456789', 'Endereço do Cliente');

-- 5. Inserir um novo pedido:
INSERT INTO pedidos (cliente_id, produto_id, quantidade, valor_total)
VALUES (id_do_cliente, id_do_produto, quantidade, valor_total);

-- 6. Atualizar o preço de um produto:
UPDATE produtos
SET preco = novo_preco
WHERE produto_id = id_do_produto;

############## DQL - Sem Joins
-- 1. Selecione todos os registros da tabela Produto:
SELECT * FROM produto;

-- 2. Selecione apenas o nome e o preço dos produtos da tabela Produto:
SELECT nome, preco FROM produto;

-- 3. Selecione os produtos da tabela Produto ordenados por preço, do mais barato para o mais caro:
SELECT * FROM produto ORDER BY preco;


-- 4. Selecione os produtos da tabela Produto ordenados por preço, do mais caro para o mais barato:
SELECT * FROM produto ORDER BY preco DESC;


-- 5. Selecione os nomes distintos das categorias da tabela Categoria:
SELECT DISTINCT Nome
FROM categoria;

-- 6. Selecione os produtos da tabela Produto cujo preço esteja entre $10 e $50:
SELECT * 
FROM produto
WHERE preco BETWEEN 5 AND 30;

-- 7. Selecione os produtos da tabela Produto, mostrando o nome como "Nome do Produto" e o preço como "Preço Unitário":
SELECT Nome AS Nome_do_produto, preco AS Preco_unitário
FROM produto;

-- 8. Selecione os produtos da tabela Produto, adicionando uma coluna calculada "Preço Total" multiplicando a quantidade pelo preço:

SET @quantidade = 1;

SELECT * , SUM(produto.preco * @quantidade) AS Preco_total
FROM produto;

-- 9. Selecione os produtos da tabela Produto, mostrando apenas os 10 primeiros registros:
SELECT * 
FROM PRODUTO
LIMIT 2;

-- 10. Selecione os produtos da tabela Produto, pulando os primeiros 5 registros e mostrando os 10 seguintes:
SELECT *
 FROM PRODUTO
 LIMIT 2
 OFFSET 7;

############# DQL - Joins
-- 1. Selecione o nome do produto e sua categoria:
SELECT produto.Nome, categoria.Nome
FROM produto
INNER JOIN categoria ON produto.categoriaID = categoria.Id;

-- 2. Selecione o nome do cliente e o nome do produto que ele comprou:


-- 3. Selecione todos os produtos, mesmo aqueles que não têm uma categoria associada:


-- 4. Selecione todos os clientes, mesmo aqueles que não fizeram nenhum pedido:


-- 5. Selecione todas as categorias, mesmo aquelas que não têm produtos associados:


-- 6. Selecione todos os produtos, mesmo aqueles que não foram pedidos:



############### DQL com joins e demais filtros
-- 1. Selecione o nome da categoria e o número de produtos nessa categoria, apenas para categorias com mais de 5 produtos:


-- 2. Selecione o nome do cliente e o total de pedidos feitos por cada cliente:


-- 3. Selecione o nome do produto, o nome da categoria e a quantidade total de vendas para cada produto:


-- 4. Selecione o nome da categoria, o número total de produtos nessa categoria e o número de pedidos para cada categoria:


-- 5. Selecione o nome do cliente, o número total de pedidos feitos por esse cliente e a média de produtos por pedido, apenas para clientes que tenham feito mais de 3 pedidos:


##### Crie uma View qualquer para qualquer um dos joins desenvolvidos

##### Crie uma transaction que cadastra um cliente e faça uma venda
-- Início da transação

-- Inserir um novo cliente


-- Inserir um novo pedido para o cliente


-- Inserir itens no pedido


-- Commit da transação (confirmação das alterações)