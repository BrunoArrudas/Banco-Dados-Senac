#Criar Usuario e atribuir permissoes

-- Crie um usuario chamado 'usuario_vendas' com a senha 'senha*123'
CREATE USER 'usuario_vendas'@'localhost'
IDENTIFIED BY 'senha*123';

-- Conceda a esse usuario todas as permissoes no banco de dados 'compras'
GRANT ALL PRIVILEGES ON compras TO 'usuario_vendas'@'localhost'; 

#Ajustar Permissoes especificas
-- Crie um usuario chamado 'usuario_marketing' com a senha 'Senha_456'
CREATE USER 'usuario_marketing'@'localhost'
IDENTIFIED BY 'Senha_456';

-- Conceda a esse usuario a permissao SELECT apenas na table 'Produto' do bd compras
GRANT SELECT ON compras.produto TO 'usuario_marketing'@'localhost';

# Gerenciar Acesso ao ItensPedido
-- Crie um usuário chamado 'usuario_consulta' com a senha 'consultA#123'
CREATE USER 'usuario_consulta'@'localhost'
IDENTIFIED BY 'consultA#123';

-- Conceda a esse usuário permissões de consulta em todas as tabelas do bd 'compras'
GRANT SELECT ON compras.* TO 'usuario_consulta'@'localhost';

-- Verifique as permissões concedidas ao usuário e exiba as informações
SHOW GRANTS FOR 'usuario_consulta'@'localhost';


# Revogar Permissões
-- Crie um usuário chamado 'usuario_limitado' com a senha 'Limite%123'
CREATE USER 'usuario_limitado'@'localhost'
IDENTIFIED BY 'Limite%123';

-- Conceda a esse usuário permissão SELECT apenas na tabela 'cliente' do bd 'compras'
GRANT SELECT ON compras.cliente TO 'usuario_limitado'@'localhost';

-- Revogue a permissão delete para esse usuário na tabela 'cliente'
REVOKE DELETE ON compras.cliente FROM 'usuario_limitado'@'localhost';

SHOW GRANTS FOR 'usuario_limitado'@'localhost';