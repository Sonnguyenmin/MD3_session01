create database Exam_management;
use Exam_management;

create table Catalog(
	id int auto_increment primary key,
    name varchar(100) unique not null,
    status bit
);

create table Exam (
	id int auto_increment primary key,
    name varchar(100) not null,
    duration int,
    catalog_id int,
     foreign key (catalog_id) references Catalog (id),
     status bit
);

create table Quenstion (
	id int auto_increment primary key,
    exam_id int,
    foreign key (exam_id) references Exam (id),
    content varchar(255) not null
);

create table Answer  (
	id int auto_increment primary key,
    question_id int,
    foreign key (question_id) references Quenstion (id),
    content varchar(255) not null,
    answerTrue bit
);

