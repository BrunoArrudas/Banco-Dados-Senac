-- ---------------------
-- Consultas Basicas
-- ---------------------
-- Exemplo: Selecionar todos os alunos
SELECT * FROM Aluno;

-- SELECT
-- FROM
-- WHERE
-- ORDER BY

SELECT nome, cpf
FROM aluno;

SELECT nome, cpf, matricula
FROM aluno
WHERE matricula > 5;

SELECT nome, cpf, matricula
FROM aluno
WHERE matricula <> 5; -- Diferente (<> !=)

SELECT *
FROM aluno
WHERE matricula > 3 -- Where me diz os comandos e filtros.
ORDER BY nome;

-- Operadores Matematicos e Logicos:
SELECT * FROM disciplina;

SELECT nome, horas
FROM disciplina
WHERE horas >= 40 AND horas <= 50;

-- Aliases para Melhor Legabilidade
SELECT nome AS nome_disciplina, horas AS carga_horaria
FROM disciplina;

-- Exiba da tabela professor, todos os professores por ordem alfabetica
-- Onde o professor tenha ID maior do que 2 e menor do que 6
-- Não exibindo a especialização e mudando a coluna "Nome" para "Nome_Professor"

SELECT * FROM professor;

SELECT Id, Nome AS Nome_Professor
FROM professor
WHERE Id > 2 AND Id < 6
ORDER BY Nome ;

-- Exemplo: Contar quantas disciplinas existem

SELECT COUNT(*) AS QuantidadeDeDisciplinas
 FROM disciplina
 WHERE Horas > 50;
 
 -- Me informe quantas matriculas foram feitas no curso de Id 2
 
SELECT * FROM curso;

SELECT COUNT(*) AS QuantidadeMatriculas
FROM matricula
WHERE Curso_ID = 2; -- Descrever sempre o campo do ID.

-- Exemplo: Selecionar professor com especialização que envolva tecnologia

SELECT * 
FROM professor
WHERE Especializacao LIKE '%gia%';    -- ='Tecnologia';

-- Exercicio: Selecione todos os cursos que terminem com "medicina" ou começam com a letra "D"
SELECT * 
FROM curso
WHERE Nome LIKE '%medicina' OR Nome LIKE 'D%'; -- Lado esquerdo % terminam. Lado direito % começam.

-- Utilizando o DISTINCT para obter valores distintos
SELECT * FROM professor;

SELECT DISTINCT especializacao FROM professor;


-- ---------------------
-- Consultas Intermediarias
-- ---------------------

-- Exemplo 1: Combinar dados de aluno e matricula usando INNER JOIN
SELECT * 
FROM aluno
INNER JOIN matricula ON Aluno.matricula = matricula.Aluno_ID;

SELECT aluno.nome, aluno.cpf, matricula.DataMatricula 
FROM aluno
INNER JOIN matricula ON Aluno.matricula = matricula.Aluno_ID;


-- Exemplo 2: Combinar dados de professor e disciplina usando INNER JOIN

SELECT professor.nome AS Nome_Professor, disciplina.nome AS Nome_Disciplina
FROM professor
INNER JOIN professores_disciplinas ON professor.id = professores_disciplinas.professor_id
INNER JOIN disciplina ON professores_disciplinas.disciplina_ID = disciplina.ID;



