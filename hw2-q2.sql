/*
 Find all itineraries from Seattle to Boston on July 15th. Search only for itineraries that have one stop 
 (i.e., flight 1: Seattle -> [somewhere], flight2: [somewhere] -> Boston). Both flights must depart on the 
 same date and must be with the same carrier. Name the output columns name (as in the name of the carrier), 
 f1_flight_num, f1_origin_city, f1_dest_city, f1_actual_time, f2_flight_num, f2_origin_city, f2_dest_city, 
 f2_actual_time, and actual_time as the total flight time. List the output columns in this order.
*/
SELECT CARRIERS.name AS name,
    F1.flight_num AS f1_flight_num,
    F1.origin_city AS f1_origin_city,
    F1.dest_city AS f1_dest_city,
    F1.actual_time AS f1_actual_time,
    F2.flight_num AS f2_flight_num,
    F2.origin_city AS f2_origin_city,
    F2.dest_city AS f2_dest_city,
    F2.actual_time AS f2_actual_time,
    (F1.actual_time + F2.actual_time) AS actual_time
FROM FLIGHTS F1
JOIN CARRIERS ON F1.carrier_id = CARRIERS.cid
JOIN FLIGHTS F2 ON F1.dest_city = F2.origin_city
WHERE F1.origin_city = 'Seattle WA'
    AND F2.dest_city = 'Boston MA'
    AND F1.day_of_month = 15
    AND F2.day_of_month = 15
    AND F1.month_id = 7
    AND F2.month_id = 7
    AND F1.actual_time + F2.actual_time < 7 * 60
    AND F1.carrier_id = F2.carrier_id);