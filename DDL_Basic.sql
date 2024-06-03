CREATE DATABASE final_project_employee;

USE 
final_project_employee
GO

/*Start irvandhar*/

CREATE TABLE tbl_permission(
	id int,
	name varchar(100)
);

/*End irvandhar*/

-- Irham J

CREATE TABLE tbl_regions (
id int,
name VARCHAR(25)
); 

-- Irham J

/*Start Jihan Azzahra*/
CREATE TABLE tbl_jobs(
	id varchar(10),
	title varchar(35),
	min_salary int,
	max_salary int
); 

CREATE TABLE tbl_job_histories(
	id_employee int,
	start_date date,
	end_date date,
	status varchar(10),
	job varchar(10),
	department int
);

CREATE TABLE tbl_salary(
	id int,
	salary_per_hour int,
	salary_per_day int,
	working_out int
	absensi int,
	month_year date,
	totalhour int
);

CREATE TABLE tbl_absensi(
	id int,
	id_employee int,
	clock_in datetime,
	clock_out datetime,
	status varchar,
	time time
);

CREATE TABLE tbl_salary_history(
	id_employee int,
	id_salary int,
	end_date date,
	status varchar(10),
	job varchar(10),
	department int
);

/*End Jihan Azzahra*/