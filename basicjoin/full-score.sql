SELECT hacker_id, name FROM (
SELECT Hackers.hacker_id, Hackers.name , COUNT(1) AS TOTAL 
FROM Submissions
INNER JOIN Hackers ON Hackers.hacker_id = Submissions.hacker_id
INNER JOIN Challenges ON Challenges.challenge_id = Submissions.challenge_id
INNER JOIN Difficulty ON Difficulty.difficulty_level = Challenges.difficulty_level
WHERE Submissions.SCORE = Difficulty.SCORE
GROUP BY Hackers.hacker_id, Hackers.name
HAVING COUNT(1) > 1
ORDER BY 3 DESC, 1
); 