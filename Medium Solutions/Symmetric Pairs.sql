# Author: AndriiSurname
SELECT DISTINCT f1.x, f1.y 
FROM   Functions f1 
                  INNER JOIN Functions f2 
                  ON f1.x = f2.y AND f1.y = f2.x 
WHERE    
                   f1.x < f1.y 
OR 
                   f1.x IN (SELECT x 
                   FROM Functions 
                   WHERE x = y 
                   GROUP BY x, y 
                   HAVING Count(*) > 1) 
ORDER  BY f1.x; 
