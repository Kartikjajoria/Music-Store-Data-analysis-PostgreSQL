-- Q5:who is the best customer? the customer who has spend the most money will be declared as the best 
-- customer. write a query that returns the person who has spend the most money

select customer.customer_id, customer.first_name, customer.last_name, sum(invoice.total) as total
from customer
join invoice on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total desc
limit 1 