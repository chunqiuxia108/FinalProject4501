
WITH RentData AS (
    SELECT zipcode, 
           TO_CHAR(CAST("date_2023_01_31" AS FLOAT), 'FM9,999,999.00') AS average_rent
    FROM zillows),
    
TreeCount AS (
    SELECT zipcode, 
           COUNT(*) AS tree_count
    FROM trees
    GROUP BY zipcode),
    
ComplaintCount AS (
    SELECT zipcode, 
           COUNT(*) AS complaint_count
    FROM three_11s
    GROUP BY zipcode),
    
Combined AS (
    SELECT r.zipcode, 
           r.average_rent, 
           COALESCE(t.tree_count, 0) AS tree_count, 
           COALESCE(c.complaint_count, 0) AS complaint_count
    FROM RentData r
    LEFT JOIN TreeCount t ON r.zipcode = t.zipcode
    LEFT JOIN ComplaintCount c ON r.zipcode = c.zipcode)
SELECT * FROM (
    SELECT * FROM Combined
    ORDER BY average_rent DESC
    LIMIT 5) HighRent
UNION ALL
SELECT * FROM (
    SELECT * FROM Combined
    ORDER BY average_rent ASC
    LIMIT 5) LowRent
