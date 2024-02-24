-- DML (INSERT - UPDATE - DELETE)
USE gestaoacademica;

INSERT INTO aluno (Matricula, nome, cpf_aluno) values 
(5, 'Joao',''),
(6, 'Monica','35795135778'),
(7, 'Fabio','65498712335');

SELECT * FROM aluno;

-- Insira os cursos Ciencia da Computação, Engenharia Civil, Administração 
-- Medicina e Arquitetura na tabela gestaoacademica.curso

ALTER TABLE curso
DROP novos_cursos;

INSERT INTO curso (Id, Nome) values
(1, 'Ciencia da Computação'),
(2,'Engenharia Civil'),
(3,'Administração'),
(4,'Medicina'),
(5,'Arquitetura');

SELECT * FROM curso;

-- Cadastre o aluno de ID 1 nos cursos de ID 3 e 5.
-- Cadastre o aluno de ID 2 nos cursos de ID 2 e 4.
-- Cadastre o aluno de ID 3 nos cursos de ID 2 e 5.
-- Para cadastrar uma data, use o formato '2024-02-23'.

INSERT INTO matricula (Aluno_ID, Curso_ID, Data_Matricula) values
(2, 2 , '2024-02-23'),
(2, 4 , '2024-02-23'),
(3, 2 , '2024-02-23'),
(3, 5 , '2024-02-23');

SELECT * FROM matricula;

-- Cadastre 5 professores e 3 disciplinas

INSERT INTO professor (Id , Nome, Especializacao) values
(11,'Jose', 'Tecnologia'),
(12,'Mario', 'Idiomas'),
(13,'Joao', 'Calculo'),
(14,'Marcos', 'Tecnologia'),
(15,'Paulo', 'Idiomas');

INSERT INTO disciplina (Id, Nome , Horas) values
(100, 'Matematica II', 250),
(200, 'Portugues I', 250),
(300, 'Geografia III', 250);

SELECT * FROM disciplina;

-- Associe cada professor a ao menos uma disciplina

INSERT INTO professor_disciplina (Professor_ID, Disciplina_ID) values
(11,100),
(12,200),
(13,300),
(14,200),
(15,100);

SELECT * FROM professor_disciplina;


