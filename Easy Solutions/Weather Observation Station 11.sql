# Author: AndriiSurname
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[aeiou].*[aeiou]$';
