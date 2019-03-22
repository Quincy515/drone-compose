use mysql;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root_password';
CREATE USER 'drone'@'%' IDENTIFIED BY 'drone_password';
GRANT All privileges ON *.* TO 'drone'@'%' IDENTIFIED BY 'drone_password';
flush privileges;
set global log_bin_trust_function_creators = 1；
create database drone;
use drone;
