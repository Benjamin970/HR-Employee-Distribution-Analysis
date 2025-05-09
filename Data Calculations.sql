# The Gender Breakdown of the Employees
SELECT gender, COUNT(*) AS Count
FROM hr
WHERE age >= 18 AND termdate = '0000-00-00'
GROUP BY gender;

# Race Breakdown of Employeees
SELECT race, COUNT(*)  AS Count 
FROM hr 
WHERE age >=18 AND termdate = '0000-00-00'
GROUP BY race
ORDER BY Count DESC;

# Age Distribution of Employees
SELECT 
	MIN(age) AS youngest,
    MAX(age) AS oldest
    FROM hr
    WHERE age >= 18 AND termdate = '0000-00-00';
    
SELECT 
	CASE
		WHEN age >=18 AND age <= 24 THEN '18-24'
        WHEN age >=25 AND age <= 34 THEN '25-34'
		WHEN age >=35 AND age <= 44 THEN '35-44'
        WHEN age >=45 AND age <= 54 THEN '45-54'
        WHEN age >=55 AND age <= 64 THEN '55-64'
        ELSE '65+'
	END AS age_group,
    count(*) AS Count
    FROM hr
	WHERE age >= 18 AND termdate = '0000-00-00'
    GROUP BY age_group
    ORDER BY age_group;
    
    
SELECT 
	CASE
		WHEN age >=18 AND age <= 24 THEN '18-24'
        WHEN age >=25 AND age <= 34 THEN '25-34'
		WHEN age >=35 AND age <= 44 THEN '35-44'
        WHEN age >=45 AND age <= 54 THEN '45-54'
        WHEN age >=55 AND age <= 64 THEN '55-64'
        ELSE '65+'
	END AS age_group,gender,
    count(*) AS Count
    FROM hr
	WHERE age >= 18 AND termdate = '0000-00-00'
    GROUP BY age_group,gender
    ORDER BY age_group,gender;

#Distribution of Employee work locations
SELECT location, count(*) AS Count 
FROM hr
WHERE age >= 18 AND termdate = '0000-00-00'
GROUP BY location;

# Average Length of Employment for Terminated Employees
SELECT first_name,last_name, ROUND(AVG(DATEDIFF(termdate,hire_date))/365,0) AS avg_period_of_employment 
FROM hr 	
WHERE termdate <= curdate() AND termdate <> '0000-00-00' AND age >18
GROUP BY first_name,last_name;

#Gender Distribution Across Departments & Job Titles
SELECT  gender,department,COUNT(*) AS Count
FROM hr
WHERE age >= 18 AND termdate = '0000-00-00'
GROUP BY department,gender
ORDER BY department;

#Distribution of JobTitles in  the Company
SELECT jobtitle,count(*) AS Count 
FROM hr 
WHERE age >= 18 AND termdate = '0000-00-00'
GROUP BY jobtitle
ORDER BY Count DESC;

#Highest Department Turnoverrate
SELECT department,
total_count,
terminated_count,
terminated_count/total_count AS termination_rate
FROM( SELECT 
	department,
	count(*) AS total_count,
    SUM(CASE WHEN termdate <> '0000-00-00' AND termdate <= CURDATE() THEN 1 ELSE 0 END) AS terminated_count
    FROM hr
    WHERE age >= 18
    GROUP BY department
    ) AS subquery
ORDER BY termination_rate DESC ;


#Distribution of Employees across locations by City & State
SELECT location_state,Count(*) AS Count 
FROM hr 
WHERE age >= 18 AND termdate = '0000-00-00'
GROUP BY location_state
ORDER BY Count DESC;

SELECT location_city,Count(*) AS Count 
FROM hr 
WHERE age >= 18 AND termdate = '0000-00-00'
GROUP BY location_city
ORDER BY Count DESC;

	
#Company Employeee Count Change over time Based on Hire and Term Dates
SELECT 
	year,
    hires,
    terminations,
    hires-terminations AS net_change,
    ROUND((hires-terminations)/hires*100,2) AS percentage_net_change
FROM 
	(SELECT YEAR(hire_date) AS year,
		COUNT(*) AS hires,
        SUM( CASE WHEN termdate <> '0000-00-00' AND termdate <= curdate() THEN 1 ELSE 0 END) AS terminations
	FROM hr
    WHERE age >= 18
    GROUP BY YEAR(hire_date)
    ) AS subquery
ORDER BY YEAR ASC;


#Tenure Distribution of each department
SELECT department,
 Round(AVG(DATEDIFF(termdate,hire_date)/365),0) AS avg_tenure
FROM hr
WHERE termdate <=curdate() AND termdate <> '0000-00-00' AND age >=18
GROUP BY department;