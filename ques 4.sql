-- Q4:which city has the best customers ? we would like to throw a promotional music festival in 
-- the city we made most money. write a query that returns one city that has the highest sum of 
-- invoices totals. returns both city name and sum of all invoices total ?

select sum(total) as invoice_total, billing_city
from invoice 
group by billing_city
order by invoice_total desc