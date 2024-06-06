/*vw_employee_details*/
CREATE VIEW vw_employee_details AS
SELECT 
	E.id, AC.username, CONCAT(E.first_name,' ',E.last_name) AS full_name, E.gender, E.email, E.hire_date, E.salary,E.manager AS manager_id, 
	CONCAT(E.first_name,' ',E.last_name) AS manager_name, E.job, E.department, AR.role, L.city, JH.status
FROM tbl_employee AS E
JOIN tbl_account_roles AS AR ON AR.account = E.id
JOIN tbl_departments AS D ON D.id = E.department
JOIN tbl_locations AS L ON  L.id = D.location 
JOIN tbl_account AS AC ON AC.id = E.id
JOIN tbl_job_histories AS JH ON JH.id_employee = E.id 

SELECT * FROM vw_employee_details;