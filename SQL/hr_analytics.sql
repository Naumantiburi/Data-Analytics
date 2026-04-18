
 use nauman;
 drop table hr_analytics;
 
 CREATE TABLE hr_analytics (
    employee_id VARCHAR(10) PRIMARY KEY,
    employee_name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    department VARCHAR(50),
    job_role VARCHAR(50),
    education VARCHAR(50),
    experience_years INT,
    joining_date DATE,
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    performance_rating INT,
    attrition VARCHAR(5),
    work_location VARCHAR(20),
    marital_status VARCHAR(20),
    training_hours INT,
    last_promotion_year INT,
    job_satisfaction INT
);
 
 select * from hr_analytics;
 
 
 
 
  SHOW VARIABLES LIKE 'secure_file_priv';
  
  

 
 
  
  
  
  
  
  LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/hr_analytics_20000_rows_18cols.csv'
INTO TABLE hr_analytics
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(employee_id, employee_name, age, gender, department, job_role, education,
 experience_years, @joining_date, salary, bonus, performance_rating,
 attrition, work_location, marital_status, training_hours,
 last_promotion_year, job_satisfaction)
SET joining_date = STR_TO_DATE(@joining_date, '%d-%m-%Y');
  
  
select * from hr_analytics
  
  
  
  