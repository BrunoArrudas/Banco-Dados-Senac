-- -------------------------
-- DDL Criação de Banco de Dados
-- -------------------------

CREATE SCHEMA IF NOT EXISTS gestaoacademica;
USE gestaoacademica;

-- -------------------------
-- DDL - Criação de Tabelas
-- -------------------------

CREATE TABLE IF NOT EXISTS aluno(
Matricula INT AUTO_INCREMENT, 
Nome VARCHAR(50) NOT NULL,
Cpf VARCHAR(11) NOT NULL UNIQUE,
PRIMARY KEY(Matricula)
);

CREATE TABLE IF NOT EXISTS gestaoacademica.curso(
Id INT AUTO_INCREMENT,
Nome VARCHAR(50) NULL DEFAULT NULL,
PRIMARY KEY (Id)
);

CREATE TABLE IF NOT EXISTS disciplina(
Id INT AUTO_INCREMENT,
Nome VARCHAR(50) NULL DEFAULT NULL,
PRIMARY KEY (Id)
);

ALTER TABLE gestaoacademica.curso
DROP COLUMN Horas;

ALTER TABLE disciplina
ADD COLUMN Horas INT NOT NULL DEFAULT 0;

CREATE TABLE IF NOT EXISTS gestaoacademica.professor(
Id INT NOT NULL AUTO_INCREMENT,
Nome VARCHAR(100) NULL DEFAULT NULL,
Especializacao VARCHAR(50) NULL DEFAULT NULL,
PRIMARY KEY (Id)
);

CREATE TABLE IF NOT EXISTS matricula(
Aluno_ID INT,
Curso_ID INT,
DataMatricula DATE NOT NULL,
PRIMARY KEY(Aluno_ID, Curso_ID),
FOREIGN KEY(Aluno_ID) REFERENCES Aluno(Matricula),
FOREIGN KEY(Curso_ID) REFERENCES Curso(Id)
);

CREATE TABLE IF NOT EXISTS disciplinas_cursos(
Disciplina_ID INT,
Curso_ID INT,
PRIMARY KEY (Disciplina_ID, Curso_ID),
FOREIGN KEY(Disciplina_ID) REFERENCES Disciplina(Id),
FOREIGN KEY(Curso_ID) REFERENCES Curso(Id)
);

CREATE TABLE IF NOT EXISTS professores_disciplinas(
Professor_ID INT,
Disciplina_ID INT,
PRIMARY KEY (Professor_ID, Disciplina_ID),
FOREIGN KEY (Professor_ID) REFERENCES Professor(Id),
FOREIGN KEY (Disciplina_ID) REFERENCES Disciplina(Id)
);

-- -------------------------
-- DML - Inserção de Dados nas Tabelas
-- -------------------------

SELECT * FROM Matricula;

INSERT INTO Aluno (Nome, Cpf) VALUES
 ('Carlos Silva', '12345678901'),
 ('Pedro Rocha','23456789012'),
 ('Monica Souza', '34567890123'),
 ('Fabio Silva','45678901234');

INSERT INTO  Curso (Nome) VALUES
('Ciencia da Computação'),
('Engenharia Civil'),
('Administração'),
('Medicina'),
('Arquitetura');

INSERT INTO Matricula(Aluno_ID, Curso_ID, DataMatricula) VALUES
(1, 2 , '2024-02-01'),
(1, 5 , '2024-02-02'),
(2, 2 , '2024-02-02'),
(2, 5 , '2024-02-01'),
(3, 2 , '2024-02-15'),
(3, 5 , '2024-02-29');

INSERT INTO Professor (Nome, Especializacao) VALUES
('Huguinho', 'Tecnologia'),
('Zezinho', 'Idiomas'),
('Luizinho', 'Calculo'),
('Tico', 'Tecnologia'),
('Teco', 'Idiomas');

INSERT INTO Disciplina (Nome, Horas) VALUES
('Matematica "Avançada"II', 40),
('Ingles Tenico', 50),
('Linguagem de Programação',45);

INSERT INTO Professores_Disciplinas (Professor_ID, Disciplina_ID) VALUES
(1,1),
(2,2),
(3,3),
(4,1),
(5,2);

INSERT INTO Disciplinas_Cursos (Disciplina_ID, Curso_ID) VALUES
(1,1),
(2,2),
(3,3);

-- SELECT = Sempre que selecionar algo.
-- FROM = Selecionar de tabelas.
-- WHERE = Onde, e possivel colocar condiçoes. 
-- ORDER BY = Ordenamento da lista (Ordenado por nome, ordem alfabetica e etc).

SELECT Nome
FROM Aluno
WHERE Matricula < 10
ORDER BY Nome;

SELECT * FROM ALUNO;

SELECT PF.Professor_ID FROM Professores_Disciplinas PF;

SELECT Nome as nm FROM Aluno;


