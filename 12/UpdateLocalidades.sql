USE localidades;
CREATE TABLE Prefeito(
ID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(50) NOT NULL,
DataPosse DATE NOT NULL
);

SELECT * FROM Prefeito;

INSERT INTO Prefeito (Nome, DataPosse) VALUES
('João da Silva', '2024-01-01'),
('Maria Oliveira', '2020-01-01'),
('Carlos Souza', '2016-01-01');

UPDATE cidades
SET Prefeito_ID = 1
WHERE Nome = 'São Paulo';

UPDATE cidades
SET Prefeito_ID = 2
WHERE ID = '5';

UPDATE cidades
SET Prefeito_ID = 3
WHERE Estado_ID = 2 AND ID = 3;


ALTER TABLE prefeito
ADD COLUMN DataPosse DATE NOT NULL;

SELECT * FROM cidades;

ALTER TABLE cidades
ADD COLUMN Prefeito_ID INT,
ADD FOREIGN KEY (Prefeito_ID) REFERENCES Prefeito(ID);

-- Exibir o nome da cidade e o nome do prefeito
SELECT cidades.Nome AS Cidade,Prefeito.Nome AS Prefeito, Estado.Uf
FROM cidades
LEFT JOIN Prefeito ON cidades.Prefeito_ID = Prefeito.ID
INNER JOIN Estado ON cidades.Estado_ID = Estado.ID;


