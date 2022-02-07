--1.How many actors are there with last name 'Wahlberg'? Answer: 2
select *
from actor
where last_name = 'Wahlberg'


--2.How many payments were made between $3.99 and $5.99? Answer: 5607
select *
from payment 
where amount between 3.99 and 5.99

--3.What film does the store have the most of? (search in inventory) Answer: There are several film all with 8 in inventory
select film_id , count(film_id)
from inventory  
group by inventory.film_id 
order by count(film_id) 



--4.How many customers have the last name ‘William’? Answer: 0
select last_name , count(last_name) 
from customer 
where last_name = 'William'
group by customer.last_name 

--5.What store employee (get the id) sold the most rentals? Answer: Staff ID 1
select rental.staff_id, count(staff_id)  
from rental
group by rental.staff_id 

--6.How many different district names are there? Answer: 378
select address.district , count(district)
from address 
group by address.district 

--7.What film has the most actors in it? (use film_actor table and get film_id) Answer: 508
 select film_id , count(film_id)
 from film_actor 
 group by film_id 
 order by count(film_id) desc

--8.From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) Answer: 13
select store_id , last_name 
from customer
where store_id = '1' 
and last_name like '%es'

--9.How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers Answer: Didnt understand Question. 
--with ids between 380 and 430? (use group by and having > 250)


--10.Within the film table, how many rating categories are there? And what rating has the most
--movies total? Answer: 5 different categories. PG-13 has the most movies. 
select rating , count(rating)
from film
group by film.rating 
order by count(rating) desc






