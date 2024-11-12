FROM postgres:17.0

ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=Abc!1234
ENV POSTGRES_DB=testdb

COPY sql /docker-entrypoint-initdb.d/