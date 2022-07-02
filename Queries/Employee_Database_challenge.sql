-- Challenge
-- Creating a retirement titles table with eligible employees
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER by e.emp_no ASC;

SELECT * FROM retirement_titles

-- Remove the duplicates
SELECT DISTINCT ON (rt.emp_no) 
    rt.emp_no, 
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no ASC, rt.to_date DESC;

SELECT * FROM unique_titles

-- Counting retiring employees
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;

SELECT * FROM retiring_titles;

-- Mentorship eligibility
ELECT DISTINCT ON (e.emp_no) e.emp_no,
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   t.title
INTO mentorship_eligibilty
FROM employees as e
	INNER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles as t
		ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (t.to_date = '9999-01-01')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no ASC, de.from_date DESC;

SELECT * FROM mentorship_eligibilty;



--Additional tables
-- mentee counts
SELECT COUNT(me.title), me.title
INTO mentee_counts
FROM mentorship_eligibilty AS me
GROUP BY me.title
ORDER BY COUNT(me.title) DESC;

--filtering mentor list
SELECT DISTINCT ON (e.emp_no)e.emp_no, 
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO unique_mentors_list
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (t.from_date BETWEEN '1985-01-01' AND '1985-12-31')
AND (t.to_date = '9999-01-01')
ORDER by e.emp_no ASC, t.from_date DESC;

SELECT * FROM unique_mentors_list;

--mentor count
SELECT COUNT(um.title), um.title
INTO unique_mentor_count
FROM unique_mentors_list AS um
GROUP BY um.title
ORDER BY COUNT(um.title) DESC;

SELECT * FROM unique_mentor_count;



