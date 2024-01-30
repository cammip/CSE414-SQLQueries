/* 
 List the distinct flight numbers of all flights from Seattle to Boston by Alaska Airlines Inc. on Mondays. 
 Also notice that, in the database, the city names include the state, so Seattle appears as ‘Seattle WA’. 
 Please use the flight_num column instead of fid. Name the output column flight_num.
*/

SELECT DISTINCT FLIGHTS.flight_num FROM FLIGHTS
JOIN CARRIERS ON FLIGHTS.carrier_id = CARRIERS.cid
JOIN WEEKDAYS ON FLIGHTS.day_of_week_id = WEEKDAYS.did
WHERE FLIGHTS.origin_city = 'Seattle WA' AND FLIGHTS.dest_city = 'Boston MA'
AND CARRIERS.cid = 'AS' AND WEEKDAYS.day_of_week = 'Monday';