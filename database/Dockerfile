# Using mysql container as the base container
FROM mysql:latest

# Copy custom MySQL configuration file
COPY sakila-db/my_custom.cnf /etc/mysql/my.cnf

# Setting the environment variables
ENV MYSQL_DATABASE=sakila
ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_USER=sakila_user
ENV MYSQL_PASSWORD=sakila_password

# init file to create the database and user
COPY sakila-db/init.sql /docker-entrypoint-initdb.d

# Copying the sakila-schema.sql and sakila-data.sql files to the docker-entrypoint-initdb.d directory
COPY sakila-db/sakila-schema.sql /docker-entrypoint-initdb.d
COPY sakila-db/sakila-data.sql /var/lib/mysql-files

# Exposing the port 3306
EXPOSE 3306