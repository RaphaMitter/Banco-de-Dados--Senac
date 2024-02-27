-- ---------------------
-- Consultas Básicas
-- ---------------------
-- Exemplo: Selecionar todos os alunos
SELECT * FROM Aluno;

-- SELECT
-- FROM
-- WHERE
-- ORDER BY

SELECT *
FROM aluno;

SELECT *
FROM aluno
WHERE matricula > 3;

SELECT *
FROM aluno
WHERE matricula > 3
ORDER BY nome;

-- Operadores Matemáticos e Lógicos:
SELECT * FROM disciplina;

SELECT nome, horas
FROM disciplina
WHERE horas >= 40 AND horas <= 50;

-- Aliases para Melhor Legibilidade
SELECT nome AS nome_disciplina, horas As carga_horaria
FROM disciplina;

-- Exemplo1: 
-- Exiba da tabela professor, todos os professores por ordem alfabética
-- Onde o professor tenha ID maior do que 2 e menor do que 6
-- Não exibindo a especialização e mudando a coluna "Nome" para "Nome_professor"

SELECT ID, Nome AS Nome_professor
FROM professor
WHERE Id >2 AND Id <6
ORDER BY nome;

-- Exemplo2: Contar quantas disciplinas existem
SELECT COUNT(*) AS QuantidadeDeDisciplinas
FROM disciplina
WHERE horas >50;

-- Me infomr quantas matriculas foram feitas no curso de ID 2
SELECT COUNT(*) AS QuantidadeMatriculas
FROM matricula
WHERE curso_id = 2;

-- Exemplo3: Selecionar professor com especialização que envolva Tecnologia
SELECT *
FROM professor
WHERE Especializacao LIKE '%Tecnologia%';


