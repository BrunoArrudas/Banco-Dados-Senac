-- Listar usuarios do Sistema.
SELECT USER, HOST FROM mysql.user;

-- Criação de um usuario de aplicação 
CREATE USER 'aplicacao'@'localhost'  -- @'Em'
IDENTIFIED BY 'Aplicacao@123'; 

CREATE USER 'aplicacao'@'%'  -- @'Em'
IDENTIFIED BY 'Aplicacao@123'; 

-- Crie um usuario "Administrador" com permissão de acesso de qualquer lugar, com nossa senha padrão
CREATE USER 'administrador'@'%'
IDENTIFIED BY 'Administrador@123';

-- Mudar senha de usuario
SET PASSWORD FOR 'aplicacao'@'localhost' = PASSWORD('Aplicacao@1234'); -- Alterar senha de um usuario

-- Alterar o Host de usuario
RENAME USER 'aplicacao'@'localhost' TO 'aplicacao'@'%'; -- Alterar Host, não rodar

-- Remover um usuario
DROP USER 'aplicacao'@'%';

-- Conceder permissoes necessarias para o usuario acessar o BD desejado
GRANT tipo_de_permissao ON nome_do_banco.nome_da_tabela TO 'usuario'@'lugar';
GRANT ALL PRIVILEGES ON gestaoacademica.* TO 'aplicacao'@'localhost'; -- *Todas as tabelas
GRANT SELECT  ON compras.pedido TO 'aplicacao'@'localhost'; 

-- Verificar permissoes por usuario
SHOW GRANTS FOR 'aplicacao'@'localhost';

-- Revogar permisssoes 

-- REVOKE tipo_permissao ON banco.tabela FROM 'usuario'@'local';
REVOKE SELECT ON compras.pedido FROM 'aplicacao'@'localhost';

