-- 1
select first_name, 'Wahlberg', count(*)
from actor a 
group by first_name; 
-- 128 Unique Wahlbergs

-- 2
select amount, count(*)
from payment p
where amount between 3.99 and 5.99
group by amount;
-- 5607

-- 3
select film_id, count(*)
from inventory i
group by film_id 
having count(*) = 7;
-- 116 with 7 copies

-- 4
select 'Willie', last_name, count(*)
from customer c 
group by customer_id, last_name; 
-- 599 individual Willies

-- 5
select staff_id, count(*) as rental_sold
from rental
group by staff_id 
order by rental_sold desc; 
-- staff_id 1 "Mike" sold the most rentals

-- 6
select district , count(*)
from address a 
group by district;
-- 378 unique district namespace 

-- 7
select film_id, count(*) as actor_count
from film_actor fa 
group by film_id 
order by actor_count desc; 
-- Film id 508 Lambs Cincinatti has 15 actors

-- 8
select *, count(*)
from customer c 
where last_name like '%es'
group by store_id, customer_id  
order by store_id asc; 
-- Customers last name ending in es from store 1 13

-- 9
select count(customer_id), amount as rent_total
from payment 
where customer_id between 380 and 430
group by amount 
having count(customer_id) > 250
order by rent_total  desc;
-- payment amounts 4.99, 2.99, and 0.99 had greater than 250 rentals

-- 10
select rating, count(rating)
from film
group by rating
order by rating desc;
-- There are 5 rating categories with PG-13 being the most numerous
