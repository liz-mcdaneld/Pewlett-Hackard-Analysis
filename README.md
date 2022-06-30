# Pewlett Hackard Analysis
## Overview of the Pewlett Hackard Analysis

The purpose of this analysis is to gather information to help the company prepare for a “silver tsunami”, where a large number of employees are eligible for retirement, creating a large number of vacancies within the company. The company has requested that data is pulled from the employee files to generate a new file showing the upcoming vacancies, as well as showing which employees are eligible for mentorships. 

Using a quick database diagram, we can review and organize relationships between the different data table and show the key relationships between the tables. 

[inset png]

SQL queries are written to create tables for the different data files and joined using primary and foreign keys. SQL queries were also used to create a list of retiring employees and employees eligible for mentorship, then exported to new CSV files for the company to store and access in their employee files.
## Results

* A query is created and used to create a table for Retirement Titles to find the eligible employees who are born between January 1, 1952 and December 31, 1955. 

[png]

* This original table contains duplicates of some of the employees due to them having multiple title positions. To correct this issue in SQL we use the ‘DISTINCT ON’ script removing the duplicates and only keeping the most recent job title for an employee. This is saved in a new table titled Unique Titles.

[png]

* The number of titles filled by employees who will be potentially retiring, this shows a total of 90,398 employees.

[png]

* Current employees who are born between January 1, 1965, and December 31, 1965, are eligible to participate in a mentorship program.

[png]

## Summary
* How many roles will need to be filled as the "silver tsunami" begins to make an impact?
The “silver tsunami”, large number of employees approaching retirement, will impact 90,398 vacancies that Pewlett Hackard will need to fill.
* Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
Based on the parameters of mentorship program eligibility there are 1,549 employees that are potential mentees. This could become a challenge if there all 90,398 retirement eligible employees who are potential mentors, this is a large difference in mentors to mentees. 
* How can we narrow the difference of mentors to mentees?
To narrow the difference in mentees to mentors we can filter through the potential mentors by selecting those who started working for the company around 35 years old from the employee files. Also making sure to only select those who are still working for the company. This shows that we will have 1,549 mentees to 1,034 mentors. 
[png][png]
As the table shows the titles of the available mentors to mentees does differ. Meaning the mentorship program will need to investigate ways to expand either the number of eligible mentees, or mentors.
