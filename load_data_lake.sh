mkdir /ex1data/
cd /ex1data
wget -O ex1data.zip https://data.medicare.gov/views/bg9k-emty/files/Ma46xU4I05xsIKuEqLLi-N-s7GoO2ZefzJ7SYyTIKjA?content_type=application%2Fzip%3B%20charset%3Dbinary
unzip ex1data.zip
cp 'Hospital General Information.csv' hospitals.csv
cp 'Timely and Effective Care - Hospital.csv' effective_care.csv
cp 'Readmissions and Deaths - Hospital.csv' readmissions.csv
cp hvbp_hcahps_08_06_2015.csv surveys_responses.csv

tail -n+2 readmissions.csv > readmissions2.csv
tail -n+2 effective_care.csv > effective_care2.csv
tail -n+2 hospitals.csv > hospitals2.csv
tail -n+2 surveys_responses.csv > surveys_responses2.csv

sudo -u hdfs hdfs dfs -mkdir -p /data/hospital_compare
sudo -u hdfs hdfs dfs -mkdir -p /data/hospital_compare/readmissions
sudo -u hdfs hdfs dfs -mkdir -p /data/hospital_compare/effective_care
sudo -u hdfs hdfs dfs -mkdir -p /data/hospital_compare/hospitals
sudo -u hdfs hdfs dfs -mkdir -p /data/hospital_compare/surveys


sudo -u hdfs hdfs dfs -put /ex1data/readmissions2.csv /data/hospital_compare/readmissions/
sudo -u hdfs hdfs dfs -put /ex1data/effective_care2.csv /data/hospital_compare/effective_care/
sudo -u hdfs hdfs dfs -put /ex1data/hospitals2.csv /data/hospital_compare/hospitals/
sudo -u hdfs hdfs dfs -put /ex1data/surveys_responses.csv /data/hospital_compare/surveys/
