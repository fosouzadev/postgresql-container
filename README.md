# PostgreSQL
Possui duas formas abaixo para criar o container. Os arquivos da pasta `sql` serão lidos, ordenados pelo nome, para executar os scripts sql no banco de dados.

## Criar container usando docker compose
```
docker-compose up -d
```

## Criar container usando docker build
```
docker build . -t postgresql-test
docker run -d --name postgresql-docker-build -p 5432:5432 -v pgdata:/var/lib/postgresql/data postgresql-test
```