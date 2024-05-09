# Author: AndriiSurname
SELECT H.hacker_id, H.name
FROM Hackers H
JOIN (
            SELECT S.hacker_id, COUNT(S.challenge_id) AS Full_Score_Count
            FROM Submissions S
            JOIN Challenges C ON S.challenge_id = C.challenge_id
            JOIN Difficulty D ON C.difficulty_level = D.difficulty_level
            WHERE S.score = D.score
            GROUP BY S.hacker_id
            HAVING COUNT(S.challenge_id) > 1
         ) AS Full_Score_Hackers ON H.hacker_id = Full_Score_Hackers.hacker_id
ORDER BY  
                Full_Score_Hackers.Full_Score_Count DESC,
                H.hacker_id ASC;
