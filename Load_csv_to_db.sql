/*
3. Write a SQL script that loads CSV data into a table.
*/

/* 
Login to postgres terminal
sudo -u postgres psql
*/

COPY table_name 
FROM '/path/filename.csv' 
/*
Path represents dirctory location where filename.csv is located
*/
DELIMITER ',' 
CSV HEADER;