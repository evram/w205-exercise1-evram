SELECT State, AVG(Score) 
AS Average_Score
FROM Procedures_Done
GROUP BY State
ORDER BY Average_Score 
LIMIT 10;
