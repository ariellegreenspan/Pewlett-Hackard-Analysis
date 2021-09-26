Select e.emp_no, 
e.first_name, 
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retiring_titles
FROM titles as t
INNER JOIN employees as e
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY t.title;
-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (title) titles00,
first_name,
last_name,
emp_no
--INTO retirement_titles
FROM retiring_titles
ORDER BY emp_no, title DESC;