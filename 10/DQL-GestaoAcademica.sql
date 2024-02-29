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

-- Exercício: Selecione todos os curso que terminam com "Medicina" ou comecem com a letra "D" 
SELECT * 
FROM curso
WHERE Nome LIKE '%Medicina' OR Nome LIKE 'D%';

-- Utilizando o DISTINCT para Obter Valores Distintos
SELECT DISTINCT especializacao FROM professor;

-- Exemplo1: Combinar dados de aluno e matricula INNER JOIN
SELECT aluno.nome, aluno.cpf, matricula.DataMatricula
FROM aluno
INNER JOIN matricula ON aluno.Matricula = matricula.Aluno_ID;
-- Exemplo2: Combinar dados de professor e disciplina usando INNER JOIN
SELECT professor.nome, disciplina.nome
FROM professor
INNER JOIN professores_disciplinas ON professor.id = professores_disciplinas.professor_id
INNER JOIN disciplina ON professores_disciplinas.Disciplina_ID = disciplina.ID;




