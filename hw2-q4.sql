SELECT DISTINCT CARRIERS.name AS name
FROM FLIGHTS, CARRIERS
WHERE FLIGHTS.carrier_id = CARRIERS.cid
GROUP BY FLIGHTS.month_id, name, FLIGHTS.day_of_month
HAVING COUNT(*) >1000; -- 12 rows in the output