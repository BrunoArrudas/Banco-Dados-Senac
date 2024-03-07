USE gestaoacademica;
-- --------------------------------------------------------------
-- Selecionar todos os alunos
SELECT * FROM aluno;

-- -------------------------------------------------------------
-- Selecionar apenas os nomes e CPFs dos alunos
SELECT aluno.Nome, aluno.cpf
FROM aluno;

-- -------------------------------------------------------------
-- Selecionar alunos matriculados após uma data específica
-- Data 2024-02-10;
SELECT * FROM matricula;

SELECT *
FROM matricula
WHERE DataMatricula > '2024-02-10';

-- ---------------------------------------------------------------
-- Contar quantas disciplinas existem com carga horária maior que X
-- Carga Horaria maior que 47 horas.

SELECT * FROM disciplina;

SELECT COUNT(*) AS Disciplinasmenosde47horas
FROM disciplina
WHERE Horas > 47;

-- ---------------------------------------------------------------
-- Contar quantas matrículas existem para cada curso

SELECT * FROM matricula;

SELECT COUNT(*) AS QuantidadesMatriculas
FROM matricula
WHERE Curso_ID = 5;

SELECT COUNT(*) AS QuantidadesMatriculas
FROM matricula
WHERE Curso_ID = 2;

SELECT COUNT(*) AS QuantidadesMatriculas
FROM matricula
WHERE Curso_ID = 4;

-- ---------------------------------------------------------------
-- Contar quantas disciplinas cada professor leciona

SELECT * FROM professores_disciplinas;

SELECT COUNT(*) AS QuantidadesDisciplinas
FROM professores_disciplinas
WHERE Disciplina_ID = 1;

SELECT COUNT(*) AS QuantidadesDisciplinas
FROM professores_disciplinas
WHERE Disciplina_ID = 3;

-- ---------------------------------------------------------------
-- Combinar nome do aluno e data da matrícula

SELECT * FROM aluno;
SELECT * FROM matricula;

SELECT aluno.Nome, matricula.DataMatricula
FROM aluno
JOIN matricula ON matricula.Aluno_ID = aluno.matricula;

-- ---------------------------------------------------------------
-- Combinar nome do curso e nome do aluno

SELECT * FROM aluno;
SELECT * FROM matricula;

SELECT curso.Nome, aluno.Nome AS NomedoAluno
FROM curso
JOIN aluno ON aluno.matricula = curso.Id;

-- ---------------------------------------------------------------
-- Contar quantos alunos se matricularam em cada curso

SELECT * FROM matricula;

SELECT COUNT(*) AS QuantidadeAlunosCurso
FROM matricula
WHERE Aluno_ID > 0;

-- ---------------------------------------------------------------

-- Não precisei de ajuda do chat, somente fiquei com um pouco de duvida em relação ao COUNT.
