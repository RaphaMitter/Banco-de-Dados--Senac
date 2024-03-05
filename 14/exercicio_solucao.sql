-- -- Selecionar todos os alunos
SELECT * FROM aluno;

-- Selecionar apenas os nomes e CPFs dos alunos
SELECT Nome, Cpf
FROM aluno;

-- Selecionar alunos matriculados após uma data específica




-- Contar quantas disciplinas existem com carga horária maior que X
SELECT Nome, Horas
FROM disciplina
WHERE horas >= 30 AND horas <= 40;

-- Contar quantas matrículas existem para cada curso
SELECT COUNT(*) AS QuantidadeMatriculas
FROM Matricula
WHERE curso_id = 3;


-- Contar quantas disciplinas cada professor leciona *
SELECT COUNT(*) AS Quantidadedisciplinas
FROM professor
WHERE curso_id;

-- Combinar nome do aluno e data da matrícula
SELECT aluno.nome,matricula.DataMatricula
FROM aluno
INNER JOIN matricula ON aluno.Matricula = matricula.Aluno_ID;

-- Combinar nome do curso e nome do aluno *
SELECT Id.aluno
FROM curso
INNER JOIN curso ON Nome.curso = curso.aluno_ID;


-- Contar quantos alunos se matricularam em cada curso
SELECT COUNT(*) AS QuantidadeMatriculas
FROM matricula
WHERE aluno_id >= 0;
