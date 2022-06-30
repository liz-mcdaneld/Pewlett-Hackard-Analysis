# Pewlett Hackard Analysis
## Overview of the Pewlett Hackard Analysis

The purpose of this analysis is to gather information to help the company prepare for a “silver tsunami”, where a large number of employees are eligible for retirement, creating a large number of vacancies within the company. The company has requested that data is pulled from the employee files to generate a new tables and files showing the upcoming vacancies, as well as showing which employees are eligible for the mentorship program. 

Using a quick database diagram, we can review and organize relationships between the different data tables and show the key relationships between the tables. 

![EmployeeDB](https://user-images.githubusercontent.com/103263248/176570037-eebf13c2-7ed9-4cd0-a707-96f8b64aefd0.png)

SQL queries are written to create tables for the different data files and joined using primary and foreign keys. SQL queries were also used to create a list of retiring employees and employees eligible for mentorship, then exported to new CSV files for the company to store and access in their employee files.

## Results

#### Retirement Titles
![retirement_titles_png](https://user-images.githubusercontent.com/103263248/176570092-2c8abf5e-2f13-4c81-9e46-3805b2da067d.png)
* A query is created and used to create a table for Retirement Titles to find the eligible employees who are born between January 1, 1952 and December 31, 1955. This information in saved in [retirement_titles.csv] in the Data folder. 

#### Unique Titles
![unique_titles_png](https://user-images.githubusercontent.com/103263248/176570129-be6a4356-92ef-429b-81d4-6252a843eb9a.png)
* The original Retirement Titles table contains duplicates of some of the employees due to them having multiple title positions. To correct this issue in SQL we use the ‘DISTINCT ON’ script removing the duplicates and only keeping the most recent job title for an employee. This is saved in a new table titled Unique Titles and exported to [unique_titles.csv] in the Data folder. 


#### Retiring Titles
![retiring_titles_png](https://user-images.githubusercontent.com/103263248/176570766-2c3d8d8d-2b0a-4e1a-9333-66034ec7a1fd.png)
* The number of titles filled by employees who will be potentially retiring is stored into a new Retiring Titles table and exported to [retiring_titles.csv] in the Data folder. The table shows a total of 90,398 employees.


#### Mentorship eligibilty
![mentorship_eligibilty_png](https://user-images.githubusercontent.com/103263248/176570190-85adf64c-5126-485d-9561-9dc9cd1a628a.png)
* Current employees who are born between January 1, 1965, and December 31, 1965, are eligible to participate in a mentorship program. This information is exported to a CSV file [mentorship_eligibility.csv] in the Data folder.

## Summary
* How many roles will need to be filled as the "silver tsunami" begins to make an impact?

The “silver tsunami”, large number of employees approaching retirement, will impact 90,398 vacancies that Pewlett Hackard will need to fill.

* Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

Based on the parameters of mentorship program eligibility there are 1,549 employees that are potential mentees. This could become a challenge with 90,398 retirement eligible employees who are potential mentors, compared to the 1,549 mentees. This is a large difference in mentors to mentees. 
#### Mentee Count
![mentee_counts_png](https://user-images.githubusercontent.com/103263248/176570295-a06e395a-fe1b-40a5-b604-d91be7249cd2.png)


* How can we narrow the difference of mentors to mentees?

To narrow the difference in mentees to mentors we can filter through the potential mentors by selecting those who started working for the company around 35 years old from the employee files. Also making sure to only select those who are still working for the company. This shows that we will have 1,549 mentees to 1,034 mentors. 
#### Mentor Count
![unique_mentor_count_png](https://user-images.githubusercontent.com/103263248/176570398-0b071ae4-59ee-43c5-87c1-8c6419206e75.png)

As the table shows the titles of the available mentors to mentees does differ. Meaning the mentorship program will need to investigate ways to expand either the number of eligible mentees, or mentors.
