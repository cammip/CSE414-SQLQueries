/*
Find the day of the week with the longest average arrival delay. Return the name of the day and the average delay.
Name the output columns day_of_week and delay, in that order.
*/
SELECT WEEKDAYS.day_of_week AS day_of_week, AVG(FLIGHTS.arrival_delay) AS delay
FROM FLIGHTS
JOIN WEEKDAYS ON FLIGHTS.day_of_week_id = WEEKDAYS.did
GROUP BY WEEKDAYS.day_of_week
ORDER BY delay DESC
LIMIT 1;