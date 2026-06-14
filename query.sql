

--Query 1: Retrieve all upcoming football matches belonging to the 'Champions League' where the match status is 'Available'.

select match_id, fixture, base_ticket_price
from Matches
where tournament_category = 'Champions League'
and match_status = 'Available';



--Query 2: Search for all users whose full names start with 'Tanvir' or contain the phrase 'Haque' (case-insensitive)

select user_id, full_name, email
from Users
where full_name ilike 'Tanvir%'
   or full_name ilike '%Haque%';



--Query 3: Retrieve all booking records where the payment status is missing (NULL), replacing the empty result with 'Action Required'.

select
booking_id,
user_id,
match_id,
coalesce(payment_status, 'Action Required') AS systematic_status
from Bookings
where payment_status is null;

--QUERY 4: Booking details with User name and Match fixture

select
b.booking_id,
u.full_name,
m.fixture,
b.total_cost
from Bookings b
inner join Users u
on b.user_id = u.user_id
inner join Matches m
on b.match_id = m.match_id;


--QUERY 5: Show all users and their booking IDs, including users without bookings

select
u.user_id,
u.full_name,
b.booking_id
from Users u
left join Bookings b
on u.user_id = b.user_id
order by u.user_id;

--QUERY 6: Bookings whose total cost is greater than average booking cost

select
booking_id,
match_id,
total_cost
from Bookings
where total_cost >
(
select avg (total_cost)
from Bookings
);


-- QUERY 7: Top 2 expensive matches after skipping the most expensive one

select
match_id,
fixture,
base_ticket_price
from Matches
order by base_ticket_price desc
offset 1
limit 2;
