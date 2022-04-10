create database amigos;
use amigos;

CREATE TABLE friends (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    address varchar(20),
    PRIMARY KEY (id)
);
CREATE TABLE time (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    best_friend varchar(20) not null,
    last_seen date,
    PRIMARY KEY (id)
);

alter table friends add column last_seen date;

create table friend_association(
    id int not null unique auto_increment,
    friends_id int not null,
    time_id int not null,
    primary key (id)
);

insert into friends(firstname, lastname, address) values ('jonh','bernard','172 Millway');
insert into friends(firstname, lastname, address) values ('brooklyn','cenatiempo','42 trumbull Ln');
insert into friends(firstname, lastname, address) values ('thomas','bernard','183 halfway Rd');
insert into time(best_friend) values ('close friend');
insert into time(best_friend) values ('best friend');
insert into time(best_friend) values ('old friend');


select * from friends;
select * from time;
select * from friend_association;

insert into friend_association (friends_id, time_id) values (3,1000);