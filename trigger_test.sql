create database trigger_test;

use trigger_test;

show tables;

drop table users;

create table users(
	fname varchar(20),
	age int
);

insert into users(fname, age) values("hk",23);
insert into users(fname, age) values("kk",16);

select * from users;


DELIMITER $$

CREATE TRIGGER must_be_adult
     BEFORE INSERT ON users FOR EACH ROW
     BEGIN
          IF NEW.age < 18
          THEN
              SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Must be an adult!';
          END IF;
     END;
$$

DELIMITER ;


insert into users(fname,age) values("ll",16);
