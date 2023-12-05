
SELECT 
    top_zipcodes.zipcode, 
    TO_CHAR(AVG(z.rent), 'FM9,999,999.00') AS average_rent
FROM (
    SELECT 
        t.zipcode, 
        COUNT(*) as tree_count
    FROM 
        trees t
    GROUP BY 
        t.zipcode
    ORDER BY 
        COUNT(*) DESC
    LIMIT 10
) AS top_zipcodes
JOIN zillows z ON top_zipcodes.zipcode = z.zipcode
WHERE 
    z.date >= '2023-08-01' AND 
    z.date < '2023-09-01'
GROUP BY 
    top_zipcodes.zipcode, top_zipcodes.tree_count
ORDER BY 
    top_zipcodes.tree_count DESC
