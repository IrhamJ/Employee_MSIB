CREATE DATABASE final_project_employee;

USE 
final_project_employee
GO

/*Start irvandhar*/

CREATE TABLE tbl_permission(
	id int,
	name varchar(100)
);

CREATE TABLE tbl_role_permissions(
	id int,
	role int,
	permission int
);

CREATE TABLE tbl_roles(
	id int,
	name varchar(50)
);

CREATE TABLE tbl_account_roles(
	id int,
	account int,
	role int
);

CREATE TABLE tbl_account(
	id int,
	username varchar(25),
	password varchar(255),
	otp int,
	is_expired datetime,
	is_used bit
);
/*End irvandhar*/

-- Irham J

CREATE TABLE tbl_regions (
	id int,
	name VARCHAR(25) NOT NULL
); 

CREATE TABLE tbl_countries(
	id char(3),
	name VARCHAR(40) NOT NULL,
	region int
);

CREATE TABLE tbl_locations(
	id int,
	street_address VARCHAR(40),
	postal_code VARCHAR(12),
	city VARCHAR(30) NOT NULL,
	state_province VARCHAR(25),
	country char(3)
);

CREATE TABLE tbl_departments(
	id int,
	name VARCHAR(30) NOT NULL,
	location int
);

CREATE TABLE tbl_employee(
	id int,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(25),
	gender VARCHAR(10) NOT NULL,
	email VARCHAR(25),
	phone VARCHAR(20),
	hire_date DATE,
	salary int, 
	manager int,
	job VARCHAR(10),
	department int
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
	working_out int,
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

/*Start Jihan Azzahra*/

--tbl_jobs
ALTER TABLE tbl_jobs ALTER COLUMN id varchar(10) NOT NULL;
ALTER TABLE tbl_jobs ADD CONSTRAINT PK_tbl_jobs PRIMARY KEY (id); 
ALTER TABLE tbl_jobs ALTER COLUMN title varchar(35) NOT NULL;

--tbl_job_histories
ALTER TABLE tbl_job_histories ALTER COLUMN id_employee int(6,0) NOT NULL;
ALTER TABLE tbl_job_histories ALTER COLUMN id_employee int(6); -- belum solve
ALTER TABLE tbl_job_histories ADD CONSTRAINT FK_ -- belum bisa
ALTER TABLE tbl_job_histories ADD CONSTRAINT PK_tbl_job_histories PRIMARY KEY (start_date); --belum solve
ALTER TABLE tbl_job_histories ALTER COLUMN status varchar(10) NOT NULL;
ALTER TABLE tbl_job_histories ALTER COLUMN job varchar(10) NOT NULL;
ALTER TABLE tbl_job_histories ALTER COLUMN department int(6) NOT NULL; --belum solve

--tbl_salary
ALTER TABLE tbl_salary ALTER COLUMN id int NOT NULL;
ALTER TABLE tbl_salary ADD CONSTRAINT PK_tbl_salary PRIMARY KEY(id);
ALTER TABLE tbl_salary ALTER COLUMN absensi int NOT NULL;
ALTER TABLE tbl_salary ADD CONSTRAINT FK_tbl_salary FOREIGN KEY (absensi) REFERENCES tbl_absensi (id); --belum solve

--tbl_absensi
ALTER TABLE tbl_absensi ADD CONSTRAINT PK_tbl_absensi PRIMARY KEY(id); --belum solve
ALTER TABLE tbl_absensi ALTER COLUMN id_employee int NOT NULL;
ALTER TABLE tbl_absensi ADD CONSTRAINT FK_tbl_absensi FOREIGN KEY (id_employee) REFERENCES tbl_employee (id_employee); --belum solve
ALTER TABLE tbl_absensi ALTER COLUMN status varchar(10) NOT NULL; 

--tbl_salary_history
ALTER TABLE tbl_salary_history ADD FOREIGN KEY (id_employee) REFERENCES tbl_employee(id_employee); --belum solve
ALTER TABLE tbl_salary_history --belum tau PK atau FK
ALTER TABLE tbl_salary_history ALTER COLUMN status varchar(10) NOT NULL;
ALTER TABLE tbl_salary_history ALTER COLUMN job varchar(10) NOT NULL;
ALTER TABLE tbl_salary_history ALTER COLUMN department int(6) NOT NULL; --belum solve

/*End Jihan Azzahra*/