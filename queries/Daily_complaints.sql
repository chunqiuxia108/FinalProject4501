
        SELECT created_date, COUNT(*) AS num_complaints
        FROM three_11s
        WHERE complaint_type = 'HEAT/HOT WATER' AND
              created_date >= '2022-10-01' AND
              created_date <= '2023-09-30'
        GROUP BY created_date
        ORDER BY created_date;
        