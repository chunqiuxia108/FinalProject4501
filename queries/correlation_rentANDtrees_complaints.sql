
    SELECT zipcode, AVG(rent) as average_rent
    FROM zillows
    WHERE date BETWEEN '2015-01-01' AND '2023-09-30'
    GROUP BY zipcode;
    


    SELECT zipcode, COUNT(*) as tree_count
    FROM trees
    GROUP BY zipcode;
    


    SELECT zipcode, COUNT(*) as complaint_count
    FROM three_11s
    WHERE created_date BETWEEN '2015-01-01' AND '2023-09-30'
    GROUP BY zipcode;
    

