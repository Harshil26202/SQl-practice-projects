-- drop database bcci;
-- show databases;
-- create database bcci;
-- use bcci;
-- -- create table player  (player_name varchar(100));
-- create table player(playername varchar(100));

-- insert into  player (playername) values('Sachin');

-- select * from player;

create table person(first_name varchar(20), last_name varchar(20), age int, player_id INT auto_increment primary key);
insert into person(first_name, last_name, age) values('Linda', NULL, 45),('Phillip', 'Frond', 70),('Calvin', 'Fisheorder', 38);


select * from person;


DESC person;




_________________________________


create table employee(id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    middle_name VARCHAR(20),
    age INT NOT NULL,
    current_status VARCHAR(20) NOT NULL DEFUALT 'Employee');

desc employee;