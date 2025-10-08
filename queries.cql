// Seleção de apenas um usuário
SELECT * 
FROM usuarios_perfis_ranking
WHERE id_user = 3;

// seleção de um ranking de filme de um usuário
SELECT user_name, filmes_assistidos, total_filmes
FROM usuarios_perfis_ranking
WHERE id_user = 2;

// seleção da tabela completa
SELECT * FROM usuarios_perfis_ranking;
