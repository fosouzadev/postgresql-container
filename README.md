# PostgreSQL
Esse repositório permite criar um banco postgreSQL em container, já com uma estrutura e dados definidos anteriormente.

Possui duas formas abaixo para criar o container. 
* Docker Compose
* Docker Build

## Estrutura
Os arquivos da pasta `sql` serão lidos, ordenados pelo nome, e executados no banco de dados.

Toda a estrutura do banco e até alguns dados mais estáticos, podem ser criados apenas adicionando um novo arquivo `sql` no diretório sql. Lembre-se de nomear o arquivo seguindo a sequência numérica.

## Criar container usando docker compose
```
docker-compose up -d
```

## Criar container usando docker build
```
docker build . -t postgresql-test
docker run -d --name postgresql-docker-build -p 5432:5432 -v pgdata:/var/lib/postgresql/data postgresql-test
```