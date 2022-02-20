CREATE DATABASE Store;
USE Store;

CREATE TABLE customers (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20),
    lastname varchar(20),
    company varchar(20),
    PRIMARY KEY (id)
);
CREATE TABLE orders (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    product varchar(20),
    cost int,
    customerId int,
    PRIMARY KEY (id),
    FOREIGN KEY (customerId) REFERENCES customers(id)
);
INSERT INTO customers (firstname, lastname, company) VALUES ( 'LUKE', 'SKYWALKER', 'JEDI');
INSERT INTO customers (firstname, lastname, company) VALUES ('DARTH', 'VADER', 'SITH');

SELECT * from orders;
SELECT * from customers;
INSERT INTO orders (product, cost, customerid) VALUES('lightsaber', '10', '1');
INSERT INTO orders (product, cost, customerid) VALUES('x-wing', '15', '2');
INSERT INTO orders (product, cost, customerid) VALUES('lightsaber', '12', '2');
INSERT INTO orders (product, cost, customerid) VALUES('star-ship', '20', '1');
INSERT INTO orders (product, cost, customerid) VALUES('New R2D2', '20', '1');