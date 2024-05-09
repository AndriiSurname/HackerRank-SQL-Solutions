# Author: AndriiSurname
SELECT
            CASE 
                    WHEN Grades.Grade < 8 THEN 'NULL'
                    ELSE Students.name
            END AS NAME,
            Grades.Grade,
            Students.Marks
FROM 
            Students 
JOIN
            Grades ON Students.Marks WHERE Students.Marks BETWEEN Grades.MIN_MARK and Grades.MAX_MARK
ORDER BY Grades.Grade DESC,
                  CASE WHEN Grades.Grade >= 8 THEN Students.Name END ASC,
                  CASE WHEN Grades.Grade < 8 THEN Students.Marks END ASC;
