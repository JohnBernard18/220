create database product;
use product;

CREATE TABLE author (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    email varchar(20),
    PRIMARY KEY (id)
);
CREATE TABLE book (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    title varchar(20) not null,
    publish_date date,
    PRIMARY KEY (id)
);

alter table book add column publish_date date;

create table author_book_association(
    id int not null unique auto_increment,
    author_id int not null,
    book_id int not null,
    primary key (id)
);
insert into author(firstname, lastname, email) values ('jonh','bernard','bernard11@yhoo.com');
insert into author(firstname, lastname, email) values ('brooklyn','cenatiempo','random@yhoo.com');
insert into author(firstname, lastname, email) values ('thomas','bernard','thomas@yhoo.com');
insert into book(title) values ('Demon Slayer');
insert into book(title) values ('love and war');
insert into book(title) values ('Attack on titan');

select * from author;
select * from book;
select * from author_book_association;


insert into author_book_association (author_id, book_id) values (1,2);