
--1
select cust_name,name as salsePerson,Salsemen.city
from Salsemen 
inner join Customer
on Salsemen.city = Customer.city

--2
select ord_no, purch_amt, cust_name, Customer.city
from Orders 
inner join Customer
on Orders.customer_id = Customer.customer_id
where purch_amt between 500 and 2000

--3
select Cust_name as Customer, Customer.city, name as Salesman, commission
from Customer 
inner join Salsemen
on Customer.salesman_id = salsemen.salesman_id

--4

select Cust_name as Customer, Customer.city, name as Salesman, commission
from Customer 
inner join Salsemen
on Customer.salesman_id = salsemen.salesman_id
where salsemen.commission > 0.12 and salsemen.city != Customer.city

--5

select Cust_name as Customer, Customer.city, name as Salesman, commission
from Customer 
inner join Salsemen
on Customer.salesman_id = salsemen.salesman_id
where salsemen.commission > 0.12


--6

select ord_no,ord_date , purch_amt, Customer.city , cust_name as Customer_Name,grade,commission
from Orders 
inner join Customer
on Orders.customer_id = Customer.customer_id
inner join Salsemen
on Orders.salesman_id = Salsemen.salesman_id


--7
SELECT * FROM orders NATURAL JOIN Customer NATURAL JOIN salsemen


--8

select cust_name, customer.city, grade, Name,
salsemen.city from Customer
inner join salsemen
on customer.salesman_id = salsemen.salesman_id
order by customer_id asc

--9

select cust_name, customer.city, grade, Name,
salsemen.city from Customer
inner join salsemen
on customer.salesman_id = salsemen.salesman_id
where Customer.grade < 300
order by customer_id asc


--10

select customer.city, ord_no,
ord_date , orders.purch_amt from orders
inner join Customer
on orders.customer_id = customer.customer_id
order by ord_date asc

--11

select cust_name, customer.city, ord_no,
ord_date, orders.purch_amt, name , commission
from Customer
LEFT OUTER JOIN orders  
ON Customer.customer_id= orders.customer_id 
LEFT OUTER JOIN salsemen  
ON salsemen.salesman_id= orders.salesman_id;
 
--12

select cust_name, Customer_id , Salsemen.salesman_id ,grade , customer.city
from salsemen
left outer join Customer
on Salsemen.salesman_id =  Customer.salesman_id 
order by Salsemen.salesman_id asc

--13
select cust_name, customer.city,grade,name as salesman ,ord_no,ord_date,purch_amt from orders
inner join customer
on orders.customer_id= customer.customer_id
inner join salsemen 
on orders.salesman_id = salsemen.salesman_id

--14

SELECT customer.cust_name,customer.city,customer.grade, 
salsemen.name AS "Salesman", 
orders.ord_no, orders.ord_date, orders.purch_amt 
FROM customer  
RIGHT OUTER JOIN salsemen  
ON salsemen.salesman_id=customer.salesman_id 
LEFT OUTER JOIN orders  
ON orders.customer_id=customer.customer_id 
WHERE orders.purch_amt>=2000 
AND customer.grade IS NOT NULL;

--15
SELECT customer.cust_name,customer.city,customer.grade, 
salsemen.name AS "Salesman", 
orders.ord_no, orders.ord_date, orders.purch_amt 
FROM customer  
RIGHT OUTER JOIN salsemen  
ON salsemen.salesman_id=customer.salesman_id 
LEFT OUTER JOIN orders  
ON orders.customer_id=customer.customer_id 
WHERE orders.purch_amt>=2000 
AND customer.grade IS NOT NULL;

--16

SELECT customer.cust_name,customer.city, orders.ord_no,
orders.ord_date,orders.purch_amt AS "Order Amount" 
FROM customer 
FULL OUTER JOIN orders  
ON customer.customer_id=orders.customer_id 
WHERE customer.grade IS NOT NULL;

--17
SELECT * 
FROM salsemen  
CROSS JOIN customer;

--18

SELECT * 
FROM salsemen s 
CROSS JOIN  customer c 
WHERE s.city IS NOT NULL 


--19

SELECT * 
FROM salsemen s 
CROSS JOIN  customer c 
WHERE s.city IS NOT NULL 
AND c.grade IS NOT NULL;


--20
SELECT * 
FROM salsemen s 
CROSS JOIN customer c 
WHERE s.city IS NOT NULL 
AND c.grade IS NOT NULL 
AND  s.city!=c.city;



