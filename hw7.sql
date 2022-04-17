
insert into orders(id) value(12);
insert into orders(id) value(13);
insert into orders(id) value(10);
insert into orders(id) value(11);

delete from orders where id = 10;
delete from orders where id = 11;
delete from orders where id = 12;
delete from orders where id = 13;
delete from orders where id in (10, 11, 12, 13);


select * from orders;
select * from customers;


select customers.firstname, customers.lastname, orders.cost
from customers
inner join orders on customers.id = orders.id;

select customers.firstname, customers.lastname, orders.cost
from customers
inner join orders on customers.id = orders.id
where lastname = 'vader';

select customers.firstname, customers.lastname, orders.cost
from customers
inner join orders on customers.id = orders.id
where lastname = 'skywalker';
