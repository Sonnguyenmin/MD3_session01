create database manage;
use manage;

create table Department(
	id int auto_increment primary key,
    name varchar(255) unique not null,
    status bit
);

create table Employee(
	id int auto_increment primary key,
    name varchar(255) unique not null,
    sex bit,
    address varchar(255) unique not null,
    phone varchar(255) unique not null,
    dateofbirth date,
    status bit,
    department_id int,
    foreign key (department_id) references Department(id)
);