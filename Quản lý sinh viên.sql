create database ra_240408;
use ra_240408;

create table class(
	class_id int auto_increment primary key,
    class_name varchar(100) unique not null,
    start_date datetime,
    status bit
);

create table students (
	student_id int auto_increment primary key,
    student_name varchar(100) not null,
    address varchar(255) not null,
    phone varchar(11) unique not null,
    class_id int,
    foreign key (class_id) references class (class_id)
);

create table subjects (
	subject_id int auto_increment primary key,
    subject_name varchar(100) not null,
    credit int not null,
    status bit
);


create table mark (
	id int auto_increment primary key,
    subject_id int ,
    foreign key (subject_id) references subjects ( subject_id),
    student_id int,
    foreign key (student_id) references students ( student_id),
    point double,
    exam_time datetime
);