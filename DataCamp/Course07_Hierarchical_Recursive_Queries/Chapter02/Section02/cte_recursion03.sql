-- Create the CTE employee_hierarchy
WITH employee_hierarchy AS (
	SELECT
		ID, 
  		NAME,
  		Supervisor
	FROM employee
  	-- Start with the IT Director
	WHERE Supervisor = 0
	UNION ALL
	SELECT 
  		emp.ID,
  		emp.NAME,
  		emp.Supervisor
	FROM employee emp
  		JOIN employee_hierarchy
  		ON emp.Supervisor = employee_hierarchy.ID)
    
SELECT 
    cte.Name as EmployeeName,
    emp.Name as ManagerName
FROM employee_hierarchy as cte
	JOIN employee as emp
	-- Perform the JOIN on Supervisor and ID
	ON cte.Supervisor = emp.ID;