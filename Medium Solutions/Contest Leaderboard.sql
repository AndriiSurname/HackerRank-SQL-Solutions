# Author: AndriiSurname
SELECT h.hacker_id, h.name, SUM(subquery.max_score) AS total_score
FROM Hackers h
JOIN(
            SELECT hacker_id, MAX(score) AS max_score
            FROM Submissions
            GROUP BY  hacker_id, challenge_id
    ) subquery ON h.hacker_id = subquery.hacker_id
GROUP BY h.hacker_id, h.name
HAVING total_score > 0

ORDER BY total_score DESC,
         h.hacker_id ASC;
