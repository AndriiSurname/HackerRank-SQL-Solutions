# Author: AndriiSurname
SELECT CAST(
                       SQRT(
                               POWER(
                                              ABS(MIN(LAT_N) - MAX(LAT_N)),2) + 
                              POWER(
                                             (ABS(MIN(LONG_W)-MAX(LONG_W))),2)) 
              AS DECIMAL(10,4))
FROM STATION;
