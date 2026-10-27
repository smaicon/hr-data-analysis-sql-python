SELECT 
    e.employee_id,
    e.first_name || ' ' || e.last_name AS employee_name,
    e.hire_date,
    EXTRACT(YEAR FROM e.hire_date) AS hire_year,
    e.salary,
    d.department_name,
    j.job_title
FROM HR.EMPLOYEES e
LEFT JOIN HR.DEPARTMENTS d ON e.department_id = d.department_id
LEFT JOIN HR.JOBS j ON e.job_id = j.job_id
WHERE e.hire_date IS NOT NULL
ORDER BY e.hire_date ASC;