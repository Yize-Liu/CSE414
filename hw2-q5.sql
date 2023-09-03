SELECT c.name AS name, SUM(f.canceled)*1.0/COUNT(*)*100 AS percentage
FROM CARRIERS AS c, FLIGHTS AS f
WHERE f.carrier_id = c.cid AND f.origin_city = "Seattle WA"
Group by name
HAVING percentage > 0.5
ORDER BY percentage; -- 6 rows in the output