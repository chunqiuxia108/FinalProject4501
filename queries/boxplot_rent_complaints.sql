
    SELECT zipcode, AVG(rent) as average_rent
    FROM 
        zillows
    WHERE 
        date >= '2023-09-01' AND date < '2023-10-01'
    GROUP BY zipcode;
    


    SELECT zipcode, COUNT(*) as complaints_count
    FROM 
        three_11s
    WHERE 
        created_date >= '2022-10-01' 
        AND 
        created_date <= '2023-09-30'
    GROUP BY zipcode;
    

