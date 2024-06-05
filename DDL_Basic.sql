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

/*Start Constraint*/

/*tbl_permission*/
ALTER TABLE tbl_permission ALTER COLUMN id INT NOT NULL;
ALTER TABLE tbl_permission ALTER COLUMN name VARCHAR(100) NOT NULL;
ALTER TABLE tbl_permission ADD CONSTRAINT PK_tbl_permission PRIMARY KEY (id);

/*tbl_role_permissions*/
ALTER TABLE tbl_role_permissions ALTER COLUMN id INT NOT NULL;
ALTER TABLE tbl_role_permissions ALTER COLUMN role INT NOT NULL;
ALTER TABLE tbl_role_permissions ALTER COLUMN permission INT NOT NULL;
ALTER TABLE tbl_role_permissions ADD CONSTRAINT PK_tbl_role_permissions PRIMARY KEY (id);
ALTER TABLE tbl_role_permissions ADD CONSTRAINT FK_tbl_role_permissions_permission FOREIGN KEY (permission) REFERENCES tbl_permission(id);
ALTER TABLE tbl_role_permissions ADD CONSTRAINT FK_tbl_role_permissions FOREIGN KEY (role) REFERENCES tbl_roles(id);

/*tbl_roles*/
ALTER TABLE tbl_roles ALTER COLUMN id INT NOT NULL;
ALTER TABLE tbl_roles ALTER COLUMN name VARCHAR(50) NOT NULL;
ALTER TABLE tbl_roles ADD CONSTRAINT PK_tbl_roles PRIMARY KEY (id);

/*tbl_account_roles*/
ALTER TABLE tbl_account_roles ALTER COLUMN id INT NOT NULL;
ALTER TABLE tbl_account_roles ALTER COLUMN account INT NOT NULL;
ALTER TABLE tbl_account_roles ALTER COLUMN role INT NOT NULL;
ALTER TABLE tbl_account_roles ADD CONSTRAINT PK_tbl_account_roles PRIMARY KEY (id);
ALTER TABLE tbl_account_roles ADD CONSTRAINT FK_tbl_account_roles_role FOREIGN KEY (role) REFERENCES tbl_roles(id);
ALTER TABLE tbl_account_roles ADD CONSTRAINT FK_tbl_account_roles_account FOREIGN KEY (account) REFERENCES tbl_account(id);

/*tbl_account*/
ALTER TABLE tbl_account ALTER COLUMN id INT NOT NULL;
ALTER TABLE tbl_account ALTER COLUMN username VARCHAR(25) NOT NULL;
ALTER TABLE tbl_account ALTER COLUMN password VARCHAR(255) NOT NULL;
ALTER TABLE tbl_account ALTER COLUMN otp INT NOT NULL;
ALTER TABLE tbl_account ADD CONSTRAINT PK_tbl_account PRIMARY KEY (id);


/*End Constraint */

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

