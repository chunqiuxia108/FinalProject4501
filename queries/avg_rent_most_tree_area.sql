
SELECT z.zipcode, TO_CHAR(z."date_2023_08_31", 'FM9,999,999.00') as average_rent
FROM (
    SELECT t.zipcode
    FROM trees t
    WHERE status = 'Alive'
    GROUP BY t.zipcode
    ORDER BY COUNT(t.zipcode) DESC
    LIMIT 10
) as top_zipcodes
JOIN zillows z ON z.zipcode = top_zipcodes.zipcode
