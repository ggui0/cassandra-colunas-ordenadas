CREATE TABLE usuarios_perfis_ranking (
    ranking_partition text,
    total_filmes int,
    id_user int,
    user_name text,
    filmes_assistidos list<text>,
    PRIMARY KEY (ranking_partition, total_filmes, id_user)
);





