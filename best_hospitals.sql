SELECT ProviderID, State, AVG(Score) 
AS Average_Score
FROM Procedures_Done
GROUP BY ProviderID
ORDER BY Average_Score 
LIMIT 10;
