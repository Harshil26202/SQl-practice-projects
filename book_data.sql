CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
select * from books;


select distinct author_lname from books;


show databases;

use book_shop;





select * from books order by released_year;



select distinct title from books where title like '%stories%';


select title, pages from books order by pages desc limit 1;


select concat(title,'-',released_year) as summary from books order by released_year desc limit 3;


select title, author_lname from books where author_lname like'% %';


select distinct title, released_year, stock_quantity from books order by stock_quantity limit 3;


select distinct title, author_lname from books order by author_lname, title;

select UPPER(concat('MY FAVOURITE AUTHOR IS ',author_fname,' ',author_lname,' !')) as yell from books order by author_lname;



select TIMEDIFF(NOW(),NOW());



create table events(moments varchar(20), captured_at timestamp default current_timestamp);

insert into events(moments) values ('poloforest trip'),('goa trip');


insert into events(moments) values ('cancel');


select * from events;


select title from books where title not like '%e%';


select 1<0;



select title, author_fname,author_lname,
	case
		when released_year >= 2001
        then '21st centuary'
        else '20th centuary'
	end as 'centuary'
from books;




select title, stock_quantity, 
	case
		when stock_quantity between 0 and 40
        then '*'
        when stock_quantity between 40 and 80
        then '**'
        else '***'
	end as 'sq_in_graphics'
from books;




SELECT author_fname, author_lname,
	CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
	END AS count
FROM books
WHERE author_lname IS NOT NULL
GROUP BY author_fname, author_lname;



create table users(username varchar(20) not null unique, age int check(age>10));

insert into users(username, age) values('harshil',20);


insert into users(username, age) values('harshil',-2);

select * from users;

create table user(username varchar(20) not null unique, constraint person_is_child check(age<18));




use shops;

show tables;
drop table students;

create table students(id int primary key auto_increment, first_name varchar(20));

create table papers(title varchar(20), grade int, student_id int, 
foreign key (student_id) references students(id));

show tables;

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

select * from students;

drop table students;

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

select * from papers;




