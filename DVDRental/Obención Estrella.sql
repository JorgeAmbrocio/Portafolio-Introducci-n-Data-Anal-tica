

select * from actor a ;


-- consulta para obtener la tabla de hechos
select
	r.rental_id ,
	p.customer_id ,
	p.payment_id ,
	p.staff_id ,
	p.amount ,
	i.film_id ,
	i.store_id ,
	r.rental_date ,
	r.return_date 
from rental r
	inner join payment p on p.rental_id = r.rental_id
	inner join inventory i on i.inventory_id  = r.inventory_id;
	

-- consulta para obtener la dimensión film
select 
	*
from film f;
	
-- consulta para obtener dimensión customer
select 
	c.*,
	a.*,
	c2.city ,
	c3.country 
from customer c
	inner join address a on a.address_id = c.address_id 
	inner join city c2 on c2.city_id  = a.city_id 
	inner join country c3 on c3.country_id  = c2.country_id ;

-- consulta para obtener dimensión staff
select 
	*
from staff s 
	inner join address a on a.address_id  = s.address_id ;

-- consulta para obtener dimensión store
select 
	*
from store s 
	inner join address a on a.address_id  = s.address_id ;


