# Author: AndriiSurname
SELECT ROUND(x.LAT_N, 4) AS Median
                FROM(
                     SELECT s.LAT_N, 
                                        COUNT(s.LAT_N) OVER(ORDER BY s.LAT_N) AS row_numb,
                                        COUNT(s.LAT_N) OVER() AS total_rows_numb
                     FROM STATION s
                    ) x
WHERE x.row_numb IN (CEIL(x.total_rows_numb / 2.00), FLOOR(x.total_rows_numb/2.0) + 1) ;
