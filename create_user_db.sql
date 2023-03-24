/*
1. Write a SQL script that creates a new user, and database. Make the user the owner of the db.
*/

/* 
Login to postgres terminal
sudo -u postgres psql
*/

CREATE USER myuser WITH ENCRYPTED PASSWORD 'mypassword';
CREATE DATABASE mydatabase WITH OWNER myuser;