SELECT MeasureID, ProviderID, STDDEV_POP(Score)
AS SD_Score
FROM Procedures_Done
GROUP BY MeasureID
ORDER BY SD_Score DESC 
LIMIT 10;
