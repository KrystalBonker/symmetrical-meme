-- Question 1 How many actors are there with the last name Wahlberg
select last_name
from actor 
where last_name = 'Wahlberg';
-- Answer is 2

--Question 2 How many payments were made between $3.99 and $5.99?
select customer_id, amount 
from payment 
where amount between 3.99 and 5.99;
--Answer is 0

--Question 3 What film does the store have the most of?
select * from inventory
order by inventory_id desc;
--Answer is Zorro Ark

--Question 4 How many customer have the last name William?
select last_name
from customers 
where last_name = 'William';
--Answer is 0

--Question 5 What store employee sold the most rentals?
select staff_id, first_name, last_name
from staff
order by staff_id desc;
--Answer Jon Stephens

--Question 6 How many different district names are there?
select 
distinct district
from address;
--Answer is 378 different names 

--Question 7 What film has the most actors in it?
select COUNT(actor_id), film_id
from film_actor
group by film_id
having COUNT(actor_id) > 10;
--Answer is Lambs Cincinatti has 15 actors

--Question 8 From store_id 1, how many customers last name ends in 'es'?
select last_name, store_id
from customer
where last_name like '%es'
order by store_id;
--Answer is 13 customers 

--Question 9 How many payment amounts had a number of rentals above 250 for customer id 380 - 430?
select amount, COUNT(rental_id)
from payment 
where customer_id BETWEEN 380 AND 430
group by amount
having COUNT(rental_id) > 250;
--Answer is three payment amounts has rentals above 250

--Question 10 How many rating categories are there and what rating has the most movie totals?
select distinct rating, COUNT(rating)
from film
group by rating
--Answer is there are 5 different rating categories and PG-13 has the most movie totals at 224











