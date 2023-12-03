
SELECT z.zipcode, COUNT(*) AS total_trees
FROM zipcodes z
JOIN trees t ON z.zipcode = t.zipcode
WHERE ST_Within(t.geometry, z.geometry) AND t.status = 'Alive'
GROUP BY z.zipcode
ORDER BY total_trees DESC
LIMIT 10;
