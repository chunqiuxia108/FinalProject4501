
    SELECT latitude, longitude
    FROM three_11s
    WHERE created_date >= '2023-01-01' AND created_date <= '2023-09-30'
    AND ST_DWithin(geometry::geography, ST_GeogFromText('POINT(-73.96253174434912 40.80737875669467)'), 1000);
    