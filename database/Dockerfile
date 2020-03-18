FROM postgres:12.2
ENV POSTGRES_DB resistance
ADD database/recreatedb_pg.sql /docker-entrypoint-initdb.d/
