create database warehouse_management;
use warehouse_management;

create table warehouse (
	id int auto_increment primary key,
    name varchar(100) unique not null,
    address varchar(255) not null,
    status bit
);

create table product (
	id int auto_increment primary key,
    name varchar(100) not null,
    price double,
    stock int,
    status bit
);

create table bill (
	id int auto_increment primary key,
    type bit,  #(0-phiếu xuất,1-phiếu nhập)
    total_price double,
    created date,
    warehouse_id int,
    foreign key (warehouse_id) references warehouse (id),
    status bit
);

create table bill_detail (
	id int auto_increment primary key,
    bill_id int,
    foreign key (bill_id) references bill (id),
    product_id int,
    foreign key (product_id) references product (id),
    quantity int,
    price double
);

DESCRIBE bill_detail;