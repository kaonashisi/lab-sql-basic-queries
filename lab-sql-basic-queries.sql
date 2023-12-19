use sakila;
-- 1. Display all available tables in the Sakila database.
show full tables;
-- 2. Retrieve all the data from the tables actor, film and customer.
select * from actor;
select * from film;
select * from customer;
/* 3. Retrieve the following columns from their respective tables:

    3.1 Titles of all films from the film table
    3.2 List of languages used in films, with the column aliased as language from the language table
    3.3 List of first names of all employees from the staff table

*/
select title from film;
select name as language from language;
select first_name from staff;
-- 4. Retrieve unique release years.
select distinct release_year from film;
/* 5. Counting records for database insights:
    5.1 Determine the number of stores that the company has.
    5.2 Determine the number of employees that the company has.
    5.3 Determine how many films are available for rent and how many times have film been rented.
    5.4 Determine the number of distinct last names of the actors in the database.
*/
select count(*) from store;
select count(*) from staff;
select count(*) from film;
select count(*) from rental;
select count(distinct last_name) from actor;
-- 6. Retrieve the 10 longest films.
select title from film
order by char_length(title) desc
limit 10;
-- 7. Use filtering techniques in order to: Retrieve all actors with the first name "SCARLETT".
select * from actor
where first_name = "SCARLETT";