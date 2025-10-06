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

# Consultas 

## Colunas de um usuario específico:

<img width="705" height="591" alt="usuarioEspecifico" src="https://github.com/user-attachments/assets/3638f728-1080-4527-80ec-83453d4fa37c" />



## Coluna de ranking de filme para um usuário:

<img width="705" height="598" alt="ColunaDeFIlme" src="https://github.com/user-attachments/assets/1874fd2f-de97-43e7-86af-cb29c95061c5" />



## Toda a tabela mostrando que cada usuário tem um conjunto diferente de colunas:

<img width="705" height="598" alt="DiferentesColunas" src="https://github.com/user-attachments/assets/1bf0bf74-c256-4af6-953c-335857448b43" />

## Modelagem dos dados:
	•	Você criou uma tabela (perfis) usando Cassandra, onde:
	•	user_id é a chave primária, identificando cada usuário.
	•	column_name e value representam cada coluna e seu valor, permitindo que cada usuário tenha um conjunto diferente de colunas.
	•	Para mostrar flexibilidade:
	•	Alguns usuários têm colunas como nome, idade, cidade, hobby e ranking_filmes.
	•	Todos os usuários têm a coluna ranking_filmes, mas outros atributos variam, demonstrando a característica de linhas com colunas diferentes.

## Conclusão
	•	A modelagem foi feita para demonstrar linhas com colunas variáveis, uma característica típica de bancos NoSQL orientados a colunas, como Cassandra.
	•	É ideal para aplicações que precisam de grande escalabilidade e leitura rápida de dados distribuídos, como sistemas de recomendação ou perfis de usuários em redes sociais.

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



