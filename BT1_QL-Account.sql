create database account;
use account;

create table account(
	id int auto_increment primary key,
    firstname varchar(100) unique not null,
    lastname varchar(100) unique not null,
    email varchar(255) unique not null,
    password varchar(255) unique not null,
    address varchar(255) unique not null,
    phone varchar(11) unique not null,
    dateofbirth date,
    status bit
);


