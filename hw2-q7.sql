/*
 Find the total capacity of all direct flights that fly between Seattle and San Francisco, CA on July 10th (i.e. Seattle to SF or SF to Seattle).
 Name the output column capacity.
*/

SELECT SUM(FLIGHTS.capacity) AS capacity
FROM FLIGHTS
WHERE (FLIGHTS.origin_city = 'Seattle WA' AND FLIGHTS.dest_city = 'San Francisco CA')
   OR (FLIGHTS.origin_city = 'San Francisco CA' AND FLIGHTS.dest_city = 'Seattle WA')
   AND FLIGHTS.month_id = 7
   AND FLIGHTS.day_of_month = 10;