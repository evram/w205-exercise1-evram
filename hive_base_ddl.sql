add jar /ex1data/csv-serde-1.1.2-0.11.0-all.jar;
CREATE EXTERNAL TABLE effective_care
(
ProviderID string,
HospitalName string,
Address string,
City string,
State string,
zip string,
County string,
Phone string,
Condition string,
MeasureID string,
MeasureName string,
Score string,
Sample string,
Footnote string,
MeasureStartDate string,
MeasureEndDate string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties(
"seperatorChar" = ",",
"quoteChar" = "\"",
"escapeChar" = "\\")
stored as textfile
location '/data/hospital_compare/effective_care/'
;
CREATE EXTERNAL TABLE readmissions
(
ProviderID string,
HospitalName string,
Address string,
City string,
State string,
zip varchar(100),
County string,
Phone string,
MeasureName string,
MeasureID string,
CompareToNational string,
Denominator string,
Score varchar(100),
LowerEstimator varchar(100),
HigherEstimator varchar (100),
Footnote string,
MeasureStart string,
MeasureEnd string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties(
"seperatorChar" = ",",
"quoteChar" = "\"",
"escapeChar" = "\\")
stored as textfile
location '/data/hospital_compare/readmissions/'
;



CREATE EXTERNAL TABLE hospitals 
(
ProviderID string,
HospitalName string,
Address string,
City string,
State string,
zip varchar(100),
County string,
Phone string,
HospitalType string,
HosptialOwnership string,
EMS string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties(
"seperatorChar" = ",",
"quoteChar" = "\"",
"escapeChar" = "\\")
stored as textfile
location '/data/hospital_compare/hospitals/'
;

CREATE EXTERNAL TABLE surveys
(ProviderID string,
HospitalName string,
Address string,
City string,
State string,
ZIP string,
County string,
CommunicationNursesAP string,
CommunicationNursesIP string,
CommunicationNursesDS string,
CommunicationDoctorsAP string,
CommunicationDoctorsIP string,
CommunicationDoctorsDS string,
ResponsivenessStaffAP string,
ResponsivenessStaffIP string,
ResponsivenessStaffDS string,
PainManagementAP string,
PainManagementIP string,
PainManagementDS string,
CommunicationMedicinesAP string,
CommunicationMedicinesIP string,
CommunicationMedicinesDS string,
CleanlinessAP string,
CleanlinessIP string,
CleanlinessDS string,
DischargeAP string,
DischargeIP string,
DischargeDS string,
OverallAP string,
OverallIP string,
OverallDS string,
HCAHPSBaseScore string,
HCAHPSConsistencyScore string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties(
"seperatorChar" = ",",
"quoteChar" = "\"",
"escapeChar" = "\\")
stored as textfile
location '/data/hospital_compare/surveys/'
;
