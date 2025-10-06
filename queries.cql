-- Mostrar todas as colunas de todos os usuários
SELECT * FROM perfis;

-- Mostrar apenas nome e ranking de filmes
SELECT column_name, value FROM perfis 
WHERE user_id='user1' AND column_name IN ('nome', 'ranking_filmes');

-- Mostrar ranking de filmes de todos os usuários
SELECT * FROM perfis WHERE column_name='ranking_filmes';
