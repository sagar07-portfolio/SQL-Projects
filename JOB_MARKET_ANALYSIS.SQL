CREATE DATABASE Job_Market_Analysis;
USE Job_Market_Analysis;
create table Jobs(
JOB_ID INT PRIMARY KEY,
COMPANY_NAME VARCHAR(50),
JOB_TITLE VARCHAR(30),
EXPERIENCE_LEVEL INT ,
EMPLOYMENT_TYPE VARCHAR(30),
LOCATION VARCHAR(30),
WORK_MODE VARCHAR(20),
SALARY DECIMAL(10,2)
);
CREATE TABLE JOB_SKILL(
SKILL_ID INT PRIMARY KEY,
JOB_ID INT,
SKILL_NAME VARCHAR(100),
FOREIGN KEY (JOB_ID) REFERENCES Jobs(JOB_ID)
);
INSERT INTO JOBS
(JOB_ID, COMPANY_NAME, JOB_TITLE, EXPERIENCE_LEVEL, EMPLOYMENT_TYPE, LOCATION, WORK_MODE, SALARY)
VALUES
(1, 'TCS', 'Data Analyst', 1, 'Full-time', 'Noida', 'Hybrid', 450000),
(2, 'Infosys', 'SQL Analyst', 2, 'Full-time', 'Bangalore', 'On-site', 600000),
(3, 'Wipro', 'Power BI Analyst', 1, 'Full-time', 'Pune', 'Hybrid', 500000),
(4, 'Accenture', 'Data Analyst', 3, 'Full-time', 'Mumbai', 'Remote', 850000),
(5, 'Tech Mahindra', 'SQL Developer', 2, 'Contract', 'Noida', 'On-site', 550000),
(6, 'HCL', 'Junior Data Analyst', 0, 'Internship', 'Lucknow', 'On-site', 180000),
(7, 'IBM', 'Python Analyst', 3, 'Full-time', 'Bangalore', 'Hybrid', 900000),
(8, 'Capgemini', 'Business Analyst', 2, 'Full-time', 'Pune', 'Hybrid', 650000),
(9, 'Deloitte', 'Data Analyst', 4, 'Full-time', 'Mumbai', 'On-site', 1200000),
(10, 'Amazon', 'Business Intelligence Analyst', 2, 'Full-time', 'Bangalore', 'Remote', 1000000),
(11, 'Flipkart', 'Data Analyst Intern', 0, 'Internship', 'Bangalore', 'On-site', 200000),
(12, 'Genpact', 'SQL Analyst', 1, 'Full-time', 'Noida', 'Hybrid', 420000),
(13, 'Cognizant', 'Data Analyst', 2, 'Full-time', 'Chennai', 'On-site', 700000),
(14, 'EY', 'Power BI Developer', 3, 'Contract', 'Gurugram', 'Hybrid', 800000),
(15, 'PwC', 'Senior Data Analyst', 5, 'Full-time', 'Mumbai', 'Remote', 1500000);

INSERT INTO JOB_SKILL (SKILL_ID, JOB_ID, SKILL_NAME)
VALUES
(1, 1, 'SQL'),
(2, 1, 'Excel'),
(3, 1, 'Power BI'),
(4, 2, 'SQL'),
(5, 2, 'Excel'),
(6, 3, 'Power BI'),
(7, 3, 'Excel'),
(8, 3, 'SQL'),
(9, 4, 'Python'),
(10, 4, 'SQL'),
(11, 5, 'SQL'),
(12, 5, 'Python'),
(13, 6, 'Excel'),
(14, 6, 'SQL'),
(15, 7, 'Python'),
(16, 7, 'SQL'),
(17, 8, 'Excel'),
(18, 8, 'Power BI'),
(19, 9, 'SQL'),
(20, 9, 'Python'),
(21, 10, 'SQL'),
(22, 10, 'Power BI'),
(23, 11, 'Excel'),
(24, 11, 'SQL'),
(25, 12, 'SQL'),
(26, 12, 'Excel'),
(27, 13, 'Power BI'),
(28, 13, 'SQL'),
(29, 14, 'Power BI'),
(30, 14, 'SQL'),
(31, 15, 'Python'),
(32, 15, 'SQL'),
(33, 15, 'Power BI');
-- SELECT*FROM JOB_SKILL;

-- Q1. Which skill is most in demand?
-- SELECT SKILL_NAME ,COUNT(*) AS TOTAL_JOB FROM JOB_SKILL
-- GROUP BY SKILL_NAME
-- ORDER BY TOTAL_JOB DESC;

-- Q2. Which are the top 5 highest-paying jobs?
-- SELECT
    -- COMPANY_NAME,
    -- JOB_TITLE,
   -- LOCATION,
    -- SALARY
-- FROM JOBS
-- ORDER BY SALARY DESC
-- LIMIT 5;

-- Q3. Find the number of jobs available in each work mode.
-- SELECT WORK_MODE,COUNT(*) AS JOBAVAILABLE FROM JOBS
-- GROUP BY WORK_MODE;

 -- Q4.Find the number of jobs available for each employment type.
--  SELECT
 -- EMPLOYMENT_TYPE, COUNT(*) AS TYPE
 -- FROM JOBS
--  GROUP BY EMPLOYMENT_TYPE;

-- Q5. Find all jobs suitable for freshers.
-- SELECT EXPERIENCE_LEVEL,JOB_TITLE FROM JOBS
-- WHERE EXPERIENCE_LEVEL=0;

-- Q6. Find the average salary for each location.
-- SELECT LOCATION,AVG(SALARY)AS AVERAGE_SALARY
-- FROM JOBS
-- GROUP BY LOCATION;

-- Q7. Find the number of jobs and average salary for each company.
-- SELECT COMPANY_NAME,AVG(SALARY)AS AVERAGE_SALARY,COUNT(*) AS TOTAL_JOB 
 -- FROM JOBS
 -- GROUP BY COMPANY_NAME;
 
 -- Q8. Find the most in-demand skills for jobs offering a salary above ₹6,00,000.
  -- SELECT JOB_SKILL.SKILL_NAME, COUNT(*) AS DEMAND_SKILL
 -- From JOBS
 -- JOIN JOB_SKILL
 -- ON JOBS.JOB_ID = JOB_SKILL.JOB_ID
 -- WHERE SALARY > 600000
 -- GROUP BY JOB_SKILL.SKILL_NAME
--  ORDER BY DEMAND_SKILL DESC;

-- Q9. Find the top 5 most in-demand skills.
-- SELECT SKILL_NAME, COUNT(*) AS DEMAND_SKILL
-- FROM JOB_SKILL
-- GROUP BY SKILL_NAME 
-- ORDER BY DEMAND_SKILL DESC
-- LIMIT 5;

-- Q10. Find the highest-paying job for each location.
-- SELECT
    -- LOCATION,
    -- COMPANY_NAME,
    -- JOB_TITLE,
    -- SALARY
-- FROM JOBS AS J
-- WHERE SALARY = (
    -- SELECT MAX(SALARY)
    -- FROM JOBS
    -- WHERE LOCATION = J.LOCATION
-- )
-- ORDER BY SALARY DESC;
 
 -- Q11. Find jobs offering a salary above the overall average salary.
--  SELECT COMPANY_NAME, JOB_TITLE, SALARY
-- FROM JOBS
-- WHERE SALARY > (
-- SELECT AVG(SALARY)
-- FROM JOBS
-- )
-- ORDER BY SALARY DESC;

-- Q12. Find companies whose average salary is greater than the overall average salary of all jobs.
-- SELECT
-- COMPANY_NAME,
-- ROUND(AVG(SALARY), 2) AS AVERAGE_SALARY
-- FROM JOBS
-- GROUP BY COMPANY_NAME
-- HAVING AVG(SALARY) > (
-- SELECT AVG(SALARY)
-- FROM JOBS
-- )
-- ORDER BY AVERAGE_SALARY DESC;

-- Q13. Find the Most In-Demand Skills in Each Work Mode.
-- SELECT
-- J.WORK_MODE,
-- JS.SKILL_NAME,
-- COUNT(DISTINCT J.JOB_ID) AS TOTAL_JOBS
-- FROM JOBS J
-- JOIN JOB_SKILL JS
-- ON J.JOB_ID = JS.JOB_ID
-- GROUP BY
-- J.WORK_MODE,
-- JS.SKILL_NAME
-- ORDER BY
-- J.WORK_MODE,
-- TOTAL_JOBS DESC;

-- Q14. Find locations where the average salary is greater than the overall average salary.
-- SELECT
-- LOCATION,
-- COUNT(*) AS TOTAL_JOBS,
-- ROUND(AVG(SALARY), 2) AS AVERAGE_SALARY
-- FROM JOBS
-- GROUP BY LOCATION
-- HAVING AVG(SALARY) > (
-- SELECT AVG(SALARY)
-- FROM JOBS
-- )
-- ORDER BY AVERAGE_SALARY DESC;

-- Q15. Find companies offering more than one job role. Display the company name, number of job postings, and average salary.
-- SELECT
-- COMPANY_NAME,
-- COUNT(*) AS TOTAL_JOBS,
-- ROUND(AVG(SALARY), 2) AS AVERAGE_SALARY
-- FROM JOBS
-- GROUP BY COMPANY_NAME
-- HAVING COUNT(*) > 1
-- ORDER BY TOTAL_JOBS DESC, AVERAGE_SALARY DESC;

-- Q16. Categorize jobs into salary groups: Low, Medium, and High using the CASE statement.
-- SELECT
-- COMPANY_NAME,
-- JOB_TITLE,
-- SALARY,
-- CASE
-- WHEN SALARY < 400000 THEN 'Low Salary'
-- WHEN SALARY BETWEEN 400000 AND 800000 THEN 'Medium Salary'
-- ELSE 'High Salary'
-- END AS SALARY_CATEGORY
-- FROM JOBS
-- ORDER BY SALARY DESC;

-- Q17. Display each job's salary and the difference between its salary and the overall average salary.
-- SELECT
-- COMPANY_NAME,
-- JOB_TITLE,
-- SALARY,
-- ROUND(
-- SALARY - (SELECT AVG(SALARY) FROM JOBS),
-- 2
-- ) AS SALARY_DIFFERENCE
-- FROM JOBS
-- ORDER BY SALARY_DIFFERENCE DESC;

-- Q18. Rank all jobs from highest to lowest salary.
-- SELECT
-- COMPANY_NAME,
-- JOB_TITLE,
-- SALARY,
-- RANK() OVER (
-- ORDER BY SALARY DESC
-- ) AS SALARY_RANK
-- FROM JOBS;

-- Q19. Find the number of jobs requiring each skill within Low, Medium, and High salary categories.
-- SELECT
-- CASE
-- WHEN J.SALARY < 400000 THEN 'Low Salary'
-- WHEN J.SALARY <= 800000 THEN 'Medium Salary'
-- ELSE 'High Salary'
-- END AS SALARY_CATEGORY,
-- JS.SKILL_NAME,
-- COUNT(DISTINCT J.JOB_ID) AS TOTAL_JOBS
-- FROM JOBS J
-- JOIN JOB_SKILL JS
-- ON J.JOB_ID = JS.JOB_ID
-- GROUP BY
-- CASE
-- WHEN J.SALARY < 400000 THEN 'Low Salary'
-- WHEN J.SALARY <= 800000 THEN 'Medium Salary'
-- ELSE 'High Salary'
-- END,
-- JS.SKILL_NAME
-- ORDER BY
-- SALARY_CATEGORY,
-- TOTAL_JOBS DESC;

-- Q20. Find jobs whose salary is greater than the average salary of jobs in the same location.
-- SELECT
-- J.COMPANY_NAME,
-- J.JOB_TITLE,
-- J.LOCATION,
-- J.SALARY
-- FROM JOBS J
-- WHERE J.SALARY > (
-- SELECT AVG(J2.SALARY)
-- FROM JOBS J2
-- WHERE J2.LOCATION = J.LOCATION
-- )
-- ORDER BY J.SALARY DESC;














