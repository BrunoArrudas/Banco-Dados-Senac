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
 
SELECT * FROM professor;

SELECT COUNT(*) AS QuantidadeMatriculas
FROM matricula
WHERE Curso_ID = 2; -- Descrever sempre o campo do ID.

-- Exemplo: Selecionar professor com especialização que envolva tecnologia

SELECT * 
FROM professor
WHERE Especializacao LIKE '%gia%';    -- ='Tecnologia';


