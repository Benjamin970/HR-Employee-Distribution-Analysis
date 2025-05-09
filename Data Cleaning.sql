# Database Creation & Data Import
CREATE DATABASE human_resource ;
USE human_resource;
SELECT * FROM hr;

# Data Cleaning Process

#Renaming Columns correctly
ALTER TABLE hr
CHANGE COLUMN ï»¿id emp_id VARCHAR(20) NULL;

#Determining the column formats
DESCRIBE hr;
SET sql_safe_updates = 0;

#Converting birthdate Column to Date Format
UPDATE hr
SET birthdate = CASE 
	WHEN birthdate LIKE '%/%' THEN date_format(str_to_date(birthdate,'%m/%d/%Y'), '%Y-%m-%d')
    WHEN birthdate LIKE '%-%' THEN date_format(str_to_date(birthdate,'%m-%d-%Y'), '%Y-%m-%d')
    ELSE NULL
END;

ALTER TABLE hr
MODIFY  COLUMN birthdate date;

#Converting hiredate column to date format
UPDATE hr
SET hire_date = CASE 
	WHEN hire_date LIKE '%/%' THEN date_format(str_to_date(hire_date,'%m/%d/%Y'), '%Y-%m-%d')
    WHEN hire_date LIKE '%-%' THEN date_format(str_to_date(hire_date,'%m-%d-%Y'), '%Y-%m-%d')
    ELSE NULL
END;

ALTER TABLE hr
MODIFY COLUMN hire_date DATE;

#Converting termdate column to date format
UPDATE hr
SET termdate = IF(termdate IS NOT NULL AND termdate != '', date(str_to_date(termdate, '%Y-%m-%d %H:%i:%s UTC')), '0000-00-00')
WHERE true;


SET sql_mode = 'ALLOW_INVALID_DATES';
ALTER TABLE hr
MODIFY COLUMN termdate DATE;

#Adding a new column'age' for easier calculations
ALTER TABLE hr
ADD COLUMN age INT;

# Calculating the age
UPDATE hr
SET age = timestampdiff(YEAR,birthdate,CURDATE());

#Checking for Outliers in the'age' column
SELECT 
	MIN(age) AS youngest,
    MAX(age) AS oldest
    FROM hr;
    
SELECT count(*) FROM hr
WHERE age < 18;