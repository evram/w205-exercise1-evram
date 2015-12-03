CREATE TABLE Procedures_Done
STORED AS PARQUET
AS
SELECT ProviderID,State,MeasureID,CAST (Score AS DOUBLE) AS Score
FROM effective_care
WHERE score IS NOT NULL
;


Create TABLE Hospital
STORED AS PARQUET
AS
SELECT ProviderID, State, HospitalName
FROM hospitals
;

CREATE TABLE Survey_Reults
STORED AS PARQUET
AS
SELECT ProviderID, OverallAP, 
FROM surveys
;

