DROP DATABASE IF EXISTS sakila;
CREATE DATABASE sakila;
DROP USER 'sakila_user'@'%';
CREATE USER 'sakila_user'@'%' IDENTIFIED BY 'sakila_password';
GRANT ALL PRIVILEGES ON sakila.* TO 'sakila_user'@'%';
FLUSH PRIVILEGES;