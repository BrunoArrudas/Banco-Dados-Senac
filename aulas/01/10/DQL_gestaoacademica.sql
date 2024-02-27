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

