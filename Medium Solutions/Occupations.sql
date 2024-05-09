# Author: AndriiSurname
SELECT MIN(IF(Occupation = 'Doctor',Name, Null)),
             MIN(IF(Occupation = 'Professor', Name, Null)),
             MIN(IF(Occupation = 'Singer',Name, Null)),
             MIN(IF(Occupation = 'Actor', Name, Null))
FROM(SELECT ROW_NUMBER() OVER(
                                                PARTITION BY Occupation 
                                                ORDER BY Name) AS row_numb ,Name, Occupation 
                                                FROM OCCUPATIONS) AS ord
GROUP BY row_numb;                                           
