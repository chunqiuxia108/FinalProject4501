
SELECT "zipcode" AS "Incident Zip", COUNT(*) AS num_complaints
FROM three_11s
WHERE "created_date" >= '2022-10-01' AND "created_date" <= '2023-09-30'
GROUP BY "zipcode"
ORDER BY num_complaints DESC;
