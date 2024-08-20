-- Q3:what are top three value of total invoices 

select total from invoice
order by total desc
limit 3