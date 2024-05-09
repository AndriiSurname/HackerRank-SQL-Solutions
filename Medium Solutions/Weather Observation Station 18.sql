# Author: AndriiSurname
SELECT CAST(
                        ABS(
                            (MIN(lat_n) - MAX(lat_n))) +
                        ABS(
                             MIN(long_w) - MAX(long_w)) AS DECIMAL(10,4))
FROM STATION;
