create database school4;
use school4;

CREATE TABLE student (
    id int auto_increment unique primary key,
    firstname varchar(15),
    lastname varchar(15),
    email varchar(20) null,
    grade_id int null,
    foreign key (grade_id) references grade(id)
);

CREATE TABLE student_address(
    id int auto_increment unique primary key,
    street varchar(20) not null,
    num int not null,
    town varchar(20) not null,
    zip int not null,
    student_id int not null,
    foreign key (student_id) references grade(id)
);

CREATE TABLE class (
    id int AUTO_INCREMENT unique primary key,
    class_subject varchar(10)
);

create table student_class_association(
    class_id int not null,
    student_id  int not null
);



CREATE TABLE grade (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    grade_num int not null
);

insert into grade (id, grade_num) values (1,9), (2,10), (3,11), (4,12), (5,12), (6,8), (7,9), (8,10), (9,11), (10,12);
insert into class (student_id, class_subject) VALUES (1,'math'), (2,'math'), (3,'english'), (4,'math'), (5,'english'), (6,'science'), (2,'science'), (7,'science'), (8,'math'), (9,'science'), (10,'science');

insert into student (firstname, lastname, email, grade_id) values ('John', 'Bernard', 'jt@yahoo.com', 1);
insert into student (firstname, lastname, email, grade_id) values ('Alex', 'Campbell', 'alex@yahoo.com', 5);
insert into student (firstname, lastname, email, grade_id) values ('JR', 'Richard', 'jr@yahoo.com', 3);
insert into student (firstname, lastname, email, grade_id) values ('Chris', 'campbell', 'chris@yahoo.com', 4);
insert into student (firstname, lastname, email, grade_id) values ('Zack', 'Campbell', 'Zack@yahoo.com', 2);
insert into student (firstname, lastname, email, grade_id) values ('rick', 'Bernard', 'jt@yahoo.com', 6);
insert into student (firstname, lastname, email, grade_id) values ('peggy', 'bernard', 'alex@yahoo.com', 8);
insert into student (firstname, lastname, email, grade_id) values ('morgan', 'Richard', 'jr@yahoo.com', 7);
insert into student (firstname, lastname, email, grade_id) values ('Chris', 'watson', 'chris@yahoo.com', 10);
insert into student (firstname, lastname, email, grade_id) values ('Zack', 'efferon', 'Zack@yahoo.com', 9);

select *from student;
select * from student order by grade_id;

insert into student_address (street, num, town, zip, student_id) values ('42 Millway Ln', 436, 'Barnstable', 02630, 1);
insert into student_address (street, num, town, zip, student_id) values ('42 Millway Ln', 436, 'Barnstable', 02630, 2);
insert into student_address (street, num, town, zip, student_id) values ('42 Millway Ln', 436, 'Barnstable', 02630, 3);
insert into student_address (street, num, town, zip, student_id) values ('42 Millway Ln', 436, 'Barnstable', 02630, 4);
insert into student_address (street, num, town, zip, student_id) values ('42 Millway Ln', 436, 'Barnstable', 02630, 5);
insert into student_address (street, num, town, zip, student_id) values ('42 Millway Ln', 436, 'Barnstable', 02630, 6);
insert into student_address (street, num, town, zip, student_id) values ('42 Millway Ln', 436, 'Barnstable', 02630, 7);
insert into student_address (street, num, town, zip, student_id) values ('42 Millway Ln', 436, 'Barnstable', 02630, 8);
insert into student_address (street, num, town, zip, student_id) values ('42 Millway Ln', 436, 'Barnstable', 02630, 9);
insert into student_address (street, num, town, zip, student_id) values ('42 Millway Ln', 436, 'Barnstable', 02630, 10);
select * from student_address;

insert into class (id, class_subject) values (1,'math');
insert into class (id, class_subject) values (2,'math');
insert into class (id, class_subject) values (3,'english');
insert into class (id, class_subject) values (4,'math');
insert into class (id, class_subject) values (5,'english');
insert into class (id, class_subject) values (6,'science');
insert into class (id, class_subject) values (7,'science');
insert into class (id, class_subject) values (8,'math');
insert into class (id, class_subject) values (9,'science');
insert into class (id, class_subject) values (10,'science');
