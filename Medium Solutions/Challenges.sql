# Author: AndriiSurname
SELECT H.hacker_id, H.name, COUNT(C.challenge_id) AS number_of_chalanges
FROM Hackers H
JOIN
        Challenges C ON H.hacker_id = C.hacker_id
        GROUP BY H.hacker_id, H.name

       HAVING (
            COUNT(C.challenge_id) IN (
                        SELECT challenge_count
                                FROM (
                                 SELECT COUNT(*) AS challenge_count
                                 FROM Challenges
                                 GROUP BY hacker_id
                                ) AS subquery1
                        GROUP BY challenge_count

        HAVING COUNT(*) = 1 OR challenge_count = (
                        SELECT MAX(challenge_count)
                                FROM (
                                 SELECT COUNT(*) AS challenge_count
                                 FROM Challenges
                                 GROUP BY hacker_id
                                ) AS subquery2
        )
    )
)
ORDER BY number_of_chalanges DESC,
                  H.hacker_id;
