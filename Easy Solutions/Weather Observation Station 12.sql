# Author: AndriiSurname
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP '^[AEIOUaeiou].|.[aeiouAEIOU]$';