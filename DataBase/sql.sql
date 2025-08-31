CREATE DATABASE customer_db;

create table customer(
	no INTEGER NOT NULL,
    name CHAR(20) NOT NULL,
    age TINYINT,
    phone VARCHAR(20),
    email VARCHAR(30) NOT NULL,
    address VARCHAR(50)
    
    primary key(no)
)