SELECT c.name AS carrier, MAX(f.price) AS max_price
FROM CARRIERS AS c, FLIGHTS AS f
WHERE  c.cid = f.carrier_id
   AND ((f.origin_city = "Seattle WA" AND f.dest_city = "New York NY")
   OR (f.origin_city = "New York NY" AND f.dest_city = "Seattle WA"))
GROUP BY carrier; -- 3 rows in the output