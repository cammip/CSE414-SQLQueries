/*
Compute the total departure delay of each airline across all flights. 
Some departure delays may be negative (indicating an early departure); they should reduce the total, 
so you don't need to handle them specially. Name the output columns name and delay, in that order.
*/
WITH Result AS (
SELECT CARRIERS.name AS name, SUM(FLIGHTS.departure_delay) AS delay
FROM FLIGHTS
JOIN CARRIERS ON FLIGHTS.carrier_id = CARRIERS.cid
GROUP BY FLIGHTS.carrier_id, CARRIERS.name )
SELECT COUNT * FROM Result;