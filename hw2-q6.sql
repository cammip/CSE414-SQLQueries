/*
Find the maximum price of tickets between Seattle and New York, NY (i.e. Seattle to NY or NY to Seattle). Show the maximum price for each airline separately.
Name the output columns carrier and max_price, in that order.
*/

SELECT CARRIERS.name AS carrier, MAX(FLIGHTS.price) AS max_price
FROM FLIGHTS
JOIN CARRIERS ON FLIGHTS.carrier_id = CARRIERS.cid
WHERE (FLIGHTS.origin_city = 'Seattle WA' AND FLIGHTS.dest_city = 'New York NY')
OR (FLIGHTS.origin_city = 'New York NY' AND FLIGHTS.dest_city = 'Seattle WA')
GROUP BY FLIGHTS.carrier_id, CARRIERS.name;