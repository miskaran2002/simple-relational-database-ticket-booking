

--Query 1: Retrieve all upcoming football matches belonging to the 'Champions League' where the match status is 'Available'.

select match_id, fixture, base_ticket_price
from Matches
where tournament_category = 'Champions League'
and match_status = 'Available';



--Query 2: Search for all users whose full names start with 'Tanvir' or contain the phrase 'Haque' (case-insensitive)





--Query 3: Retrieve all booking records where the payment status is missing (NULL), replacing the empty result with 'Action Required'.

select
booking_id,
user_id,
match_id,
coalesce(payment_status, 'Action Required') AS systematic_status
from Bookings
where payment_status is null;


