-- 0 Iniciando a transação
START TRANSACTION;

-- 1 Inserindo um novo pedido
INSERT INTO pedido (clienteId, dataPedido) VALUES
(1, '2024-03-12');
SET @novoPedidoID = last_insert_id();

-- 2 Inserindo os itens do pedido
INSERT INTO itenspedido (pedidoId, produtoId, quantidade) VALUES
(@novoPedidoID, 4, 6);

-- 3 Atualizando a quantidade do produto no estoque
UPDATE produto SET quantidade = quantidade - 6 WHERE ID = 4;

-- Desfazendo a transação
ROLLBACK; -- COMMIT

-- -------------------------------------------------------------------------------------

-- Adicione na tabela gestaoacademica.aluno a coluna "matriculado"
-- Crie uma transaction que , ao matricular um aluno em um curso mude a coluna matriculado para 'true';

START TRANSACTION;
SET @alunoID = 7;

-- Matricular um aluno
INSERT INTO gestaoacademica.matricula VALUES
(@alunoID, 1 , current_date());

-- Altero o gestaoacademica.aluno.matriculado para TRUE
UPDATE gestaoacademica.aluno
SET matriculado = true
WHERE matricula = @alunoID;

COMMIT;

SELECT * FROM aluno;
-- ---------------------------------------------------------------------------------

-- Criar uma transaction que , quando o cliente fizer uma hospedagem Automaticamente adicione um cafe da manha para sua hospedagem
START TRANSACTION;

	SET @cafeManhaID = 1;
    SET @dataEntrada = '2024-01-01';
    
INSERT INTO hospedagem (codChale, codCliente, dataInicio, dataFim, qtdPessoas, desconto, valorFinal) VALUES
(3, 5, @dataEntrada, '2024-03-01', 3, 0, 370.00);
SET @HospedagemID = last_insert_id();

-- Automaticamente adicione um cafe da manha para a sua hospedagem
INSERT INTO hospedagem_servico VALUES
(@HospedagemID, @cafeManhaID, @dataEntrada);

COMMIT;

 
