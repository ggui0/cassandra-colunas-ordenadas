CREATE TABLE IF NOT EXISTS perfis (
    user_id text,
    column_name text,
    value text,
    PRIMARY KEY (user_id, column_name)
);
