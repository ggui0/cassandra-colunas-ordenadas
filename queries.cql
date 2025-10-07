-- Mostrar todas as colunas de todos os usuários
SELECT * FROM perfis;

-- Mostrar apenas o ranking de filmes de um usuadio
SELECT value FROM perfis 
WHERE user_id = '1' AND column_name = 'ranking_filmes';

-- Mostrar a coluna de um usuario especifico
SELECT * FROM perfis 
WHERE user_id = '1';
