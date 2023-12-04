
    SELECT zipcode, date_2023_09_30 AS rent
    FROM zillows;
    


    SELECT zipcode, COUNT(*) AS num_trees
    FROM trees
    GROUP BY zipcode;
    


    SELECT zipcode, COUNT(*) AS num_complaints
    FROM three_11s
    WHERE created_date >= '2015-01-01' AND created_date <= '2023-09-30'
    GROUP BY zipcode;
    

