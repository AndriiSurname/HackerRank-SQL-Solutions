# Author: AndriiSurname
SELECT s.name
FROM Students s
JOIN Friends f ON s.ID = f.ID
JOIN Packages p ON s.ID = p.ID
JOIN Packages p2 ON f.Friend_id = p2.ID
WHERE p.salary < p2.salary
ORDER BY p2.salary;
