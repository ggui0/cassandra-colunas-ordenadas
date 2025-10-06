# Projeto: Colunas Ordenadas com Apache Cassandra

## Missão
Modelar um cenário usando **colunas ordenadas**, onde cada usuário pode ter um conjunto diferente de colunas, e fazer as seguintes consultas:
- Recuperar as colunas de um usuário específico
- Recuperar apenas as colunas de ranking de filmes para um usuário.



---

## Pré-requisitos
- Apache Cassandra instalado (versão 4.1+)
- Acesso ao **CQL Shell (cqlsh)**
- Linux ou qualquer sistema com Cassandra configurado

## Comandos
- su - (entrar no root)
- cd /opt/cassandra (entrar no diretório)
- bin/cassandra -R (rodar o cassandra)
- cqlsh; (em outro terminal para criar a keyspace)

          



---

## Estrutura da Tabela

Tabela: `perfis`  

| Coluna       | Tipo  | Descrição                           |
|--------------|-------|------------------------------------|
| user_id      | text  | Chave de linha (identificação do usuário) |
| column_name  | text  | Nome da coluna (nome, idade, hobby etc.) |
| value        | text  | Valor da coluna                     |

> Observação: Cada linha pode ter colunas diferentes, mostrando a flexibilidade do Cassandra.

---

## Criação da Tabela

```sql
CREATE KEYSPACE IF NOT EXISTS usuarios
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

CREATE TABLE perfis (
    user_id text,
    column_name text,
    value text,
    PRIMARY KEY (user_id, column_name)
);
