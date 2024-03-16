-- CRIAR UMA TRANSACTION QUE , QUANDO O CLIENTE FIZER UMA HOSPEDAGEM
USE hotel;

START TRANSACTION;
SET @cafeManhaID = 1;
SET @dataEntrada = '2024-01-01';

INSERT INTO hospedagem (codChale, codCliente, dataInicio, dataFim, qtdPessoas, desconto, valorTotal)
  (3, 5, '2024-01-01', '2024-03-01', 3, 0, 370.00);
  SET @cafeManhaID = last_insert_id();
-- AUTOMATICAMENTE ADICIONE UM CAFÉ DA MANHÃ PARA A SUA HOSPEDAGEM
INSERT INTO hospedagem_servico
  VALUES(@hospedagemID, @cafeManhaID,@dataEntrada);
  
  COMMIT;

