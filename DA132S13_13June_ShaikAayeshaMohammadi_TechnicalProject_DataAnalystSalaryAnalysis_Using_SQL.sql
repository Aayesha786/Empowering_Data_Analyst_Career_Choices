/*# Title: "Data Analyst Career Planning: Navigating Salaries and Job Titles (2020-2023)"


# Problem Statement:

For aspiring data analysts, choosing the right career path can be daunting, with various job titles, company locations, and salary ranges to consider. This analysis aims to simplify the decision-making process by providing comprehensive insights into data analyst salaries and job titles from 2020 to 2023. By examining these factors, we aim to help data analyst job seekers make informed choices aligned with their salary expectations and career aspirations.

# Business Objective:

The primary objective of this study is to empower data analyst job seekers with the knowledge required to make strategic career decisions.

We aim to:

##### Provide a detailed overview of data analyst job titles and their corresponding salary ranges.

##### Offer insights into salary variations based on different company locations, enabling job seekers to choose locations that align with their income goals.

##### Guide job seekers in selecting job titles that match their expertise level and salary expectations.

##### Facilitate informed career planning by presenting salary trends over a four-year period.

##### Assist job seekers in understanding the impact of company size on salary levels, helping them target organizations that fit their career objectives.


# Context:

The dataset, "Data Science Salaries (2020-2023)," offers a comprehensive view of salary trends and job titles in the data analyst field across various global regions. This dataset aggregates salary information to provide job seekers with valuable insights into career opportunities and salary expectations within the data analyst domain.

# Need of Study:

### Career Planning: 
Aspiring data analysts need insights into salary ranges and job titles to plan their career paths effectively.

### Geographical Preferences:
Understanding salary variations across company locations helps job seekers make informed decisions about where to work.

### Job Title Considerations:
Knowledge of salary ranges associated with different job titles assists individuals in choosing roles aligned with their income expectations.

### Salary Trends: 
Insight into salary trends over several years allows job seekers to anticipate future earning potential.

### Company Size Impact: 
Awareness of how company size affects salaries guides job seekers in targeting organizations that match their salary goals.

### This study empowers data analyst job seekers to make well-informed career decisions, considering job titles, salary expectations, and geographical preferences within the data analyst field.
*** List of Analysis Performed

-- 1) What is the average salary for Senior-level positions?

-- 2)How many employees have Full-Time employment type?

-- 3) What is the highest salary in USD for employees residing in the United States?

-- 4)What is the average salary for employees in Medium-sized companies?

-- 5)How many employees are in Small companies and have Expert-level expertise?

-- 6) What is the total salary expenditure for Contract positions in 2020?

-- 7) What is the average salary for Senior-level employees in Germany?

-- 8) What is the average salary in USD for employees with Expert-level expertise who work in Small-sized companies in Italy?

-- 9)How many employees have Expert-level expertise and work in the United States?

-- 10)What is the average salary for employees who work in companies with Small and Medium sizes?

*/


-- 1) What is the average salary for Senior-level positions?

SELECT AVG("SalaryinUSD") AS "Average Salary for Senior-level Positions"
FROM salary.df
WHERE "ExperienceLevel" = 'Senior';

-- The Query Says that Average salary for Senior-level positions is 160260.30 USD

-- 2)How many employees have Full-Time employment type?

SELECT COUNT(*) AS "Number of Employees with Full-Time Employment"
FROM salary.df
WHERE "EmploymentType" = 'Full-Time';

-- The Query Says that Number of employees with Full-Time employment is 3909

-- 3) What is the highest salary in USD for employees residing in the United States?

SELECT MAX("SalaryinUSD") AS "Highest Salary in USD for Employees in the United States"
FROM salary.df
WHERE "EmployeeResidence" = 'United States';

-- The Query Says that Highest salary in USD for employees in the United States is 450000

-- 4)What is the average salary for employees in Medium-sized companies?

SELECT AVG("SalaryinUSD") AS "Average Salary for Employees in Medium-sized Companies"
FROM salary.df
WHERE "CompanySize" = 'Medium';

-- The Query Says that  Average salary for employees in Medium-sized companies is 149270.86 USD

-- 5)How many employees are in Small companies and have Expert-level expertise?

SELECT COUNT(*) AS "Number of Employees in Small Companies with Expert-level Expertise"
FROM salary.df
WHERE "CompanySize" = 'Small' AND "ExpertiseLevel" = 'Expert';

-- Number of employees in Small companies with Expert-level expertise: 50

-- 6) What is the total salary expenditure for Contract positions in 2020?

SELECT SUM("SalaryinUSD") AS "Total Salary Expenditure for Contract Positions in 2020"
FROM salary.df
WHERE "EmploymentType" = 'Contract' AND "Year" = 2020;

-- The Query Says that  Total salary expenditure for Contract positions in 2020 is 204753.00 USD

-- 7) What is the average salary for Senior-level employees in Germany?

SELECT AVG("SalaryinUSD") AS "Average Salary for Senior-level Employees in Germany"
FROM salary.df
WHERE "ExperienceLevel" = 'Senior' AND "CompanyLocation" = 'Germany';

-- The Query Says that Average salary for Senior-level employees in Germany is 131934.40 USD

-- 8) What is the average salary in USD for employees with Expert-level expertise who work in Small-sized companies in Italy?

SELECT AVG("SalaryinUSD") AS "Average Salary in USD for Employees with Expert-level Expertise in Small-sized Companies in Italy"
FROM salary.df
WHERE "ExpertiseLevel" = 'Expert' AND "CompanySize" = 'Small' AND "CompanyLocation" = 'Italy';

-- The Query Says that Average salary for Expert-level employees in Small-sized Italian companies is  53984.00 USD

-- 9)How many employees have Expert-level expertise and work in the United States?

SELECT COUNT(*) AS "Number of Employees with Expert-level Expertise in the United States"
FROM salary.df
WHERE "ExpertiseLevel" = 'Expert' AND "EmployeeResidence" = 'United States';


-- The Query Says that Number of employees with Expert-level expertise in the United States is 2101

-- 10)What is the average salary for employees who work in companies with Small and Medium sizes?

SELECT AVG("Salary in USD") AS "Average Salary for Employees in Companies with Small and Medium Sizes"
FROM salary.df
WHERE "Company Size" IN ('Small', 'Medium');

-- The Query Says that Average salary for employees in Small and Medium-sized companies is 146431.95 USD


/* Insights Found from the Analysis:

Conclusion:

For aspiring data analysts, the insights provided in this study offer valuable guidance in navigating their career paths. Here are the key conclusions based on the business objective:

Senior-Level Salary: The average salary for senior-level data analysts is approximately $160,260.30 USD. Job seekers with significant experience can anticipate competitive compensation in this category.

Full-Time Employment: A substantial number of data analysts, specifically 3,909 individuals, prefer full-time employment. This insight highlights the popularity of full-time roles among data analyst job seekers.

Highest Salary in the United States: The United States offers the highest salary potential for data analysts, with the maximum recorded salary reaching $450,000 USD. Job seekers considering lucrative opportunities may explore positions in the U.S.

Medium-Sized Company Salaries: Data analysts working in medium-sized companies enjoy an average salary of approximately $149,270.86 USD. This data can help job seekers target organizations that align with their size preferences.

Expert-Level Employees in Small Italian Companies: Data analysts with expert-level expertise working in small-sized Italian companies earn an average salary of $53,984.00 USD. This information can guide job seekers looking for specific job titles and locations.

Expert-Level Expertise in the United States: The United States has 2,101 data analysts with expert-level expertise. Job seekers aiming to join this category can explore opportunities in the U.S. market.

Small and Medium-Sized Company Salaries: Employees in small and medium-sized companies receive an average salary of approximately $146,431.95 USD. Job seekers can consider the company size factor when planning their careers.

These conclusions provide data analyst job seekers with valuable insights into salary ranges, location-based opportunities, and expertise-level considerations, empowering them to make informed career decisions aligned with their aspirations and salary expectations.*/