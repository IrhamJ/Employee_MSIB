/*DML Start Irvan*/
--permission, role_permission, roles, account roles, accounts

INSERT INTO tbl_permission (id, name) --ADD PERMISSION MUNGKIN BISA DI MULAI DARI 100000
VALUES (100001, 'Add_Employee'),(100002, 'Edit_Employee'),(100003, 'Edit_Profile'),
(100004, 'Change_Pass'),(100005, 'Add_Job'),(100006, 'Edit_Job');

SELECT id,name FROM tbl_permission;

INSERT INTO tbl_roles (id, name) --ADD ROLES MUNGKIN BISA DI MULAI DARI 1X0X00
VALUES (120100,'Super_Admin'),(120200,'Admin'),(130300,'Manager'),(140400,'Employee');

SELECT id,name FROM tbl_roles;

INSERT INTO tbl_role_permissions (id, role, permission) --ADD ROLE PERMISSION idnya mungkin bisa auto increment ?
VALUES (210001,120100,100001),(210002,120200,100002),(210003,130300,100003),(240001,140400,100004);

SELECT id, role, permission FROM tbl_role_permissions;

--INSERT INTO tbl_account

/*tbl_account dan tbl_account_roles belum*/

/*DML End Irvan*/

-- DML Irham J -- 
-- Region, Countries, Locations, Departments, Employees --

-- Add Region --
INSERT INTO tbl_regions (id, name) VALUES
(400100, 'South East Asia'), 
(400200, 'South Asia'), 
(400300, 'North America');
SELECT * FROM tbl_regions;

-- Add Country
INSERT INTO tbl_countries (id, name, region) VALUES
('ID', 'Indonesia', 400100),  
('TH', 'Thailand', 400100), 
('VN', 'Vietnam', 400100), ('IN', 'India', 400200), 
('PK', 'Pakistan', 400200), 
('US', 'United States', 400300);
SELECT * FROM tbl_countries;

-- Add Locations
INSERT INTO tbl_locations (id, street_address, postal_code, city, state_province, country) VALUES
(500100, 'Jl. Sudirman No.1', '10210', 'Jakarta', 'DKI Jakarta', 'ID'),
(500200, 'Jl. Asia-Afrika No.2', '10310', 'Bandung', 'Jawa Barat', 'ID'),
(500300, 'Jl. Soekarno-Hatta No.3', '10110', 'Surabaya', 'Jawa Timur', 'ID');

INSERT INTO tbl_locations (id, street_address, postal_code, city, state_province, country) VALUES
(600100, 'Sukhumvit Road', '10110', 'Bangkok', 'Bangkok', 'TH'),
(600200, 'Ratchadamnoen Road', '50000', 'Chiang Mai', 'Chiang Mai', 'TH'),
(600300, 'Nimmanhaemin Road', '50000', 'Chiang Mai', 'Chiang Mai', 'TH');

INSERT INTO tbl_locations (id, street_address, postal_code, city, state_province, country) VALUES
(700100, 'Le Loi Street', '700000', 'Ho Chi Minh City', 'Ho Chi Minh', 'VN'),
(700400, 'Tran Phu Street', '650000', 'Nha Trang', 'Khanh Hoa', 'VN'),
(700300, 'Vo Nguyen Giap Street', '550000', 'Da Nang', 'Da Nang', 'VN');

SELECT * FROM tbl_locations;

-- Add Departments
INSERT INTO tbl_departments (id, name, location) VALUES
(600100, 'HR', 500100), -- Jakarta
(600200, 'Finance', 500100), -- Jakarta
(600300, 'IT', 500200), -- Bandung
(600400, 'Marketing', 500200), -- Bandung
(600500, 'Sales', 500300), -- Surabaya
(600600, 'R&D', 500300); -- Surabaya

SELECT * FROM tbl_departments;

-- Add Employee
-- Manager Entries
INSERT INTO tbl_employee (id, first_name, last_name, gender, email, phone, hire_date, salary, manager, job, department)
VALUES
(1, 'Alice', 'Johnson', 'Female', 'alice.johnson@example.com', '123-456-7890', '2022-01-15', 2, NULL, 'ProjMgr', 600100), -- Jakarta, HR
(2, 'Bob', 'Smith', 'Male', 'bob.smith@example.com', '234-567-8901', '2021-05-20', 3, NULL, 'WebDevSr', 600300); -- Bandung, IT

-- Employee Entries
INSERT INTO tbl_employee (id, first_name, last_name, gender, email, phone, hire_date, salary, manager, job, department)
VALUES
(3, 'Charlie', 'Brown', 'Male', 'charlie.brown@example.com', '345-678-9012', '2023-03-10', 4, 1, 'UXDes', 600200), -- Jakarta, Finance, Manager: Alice
(4, 'David', 'Wilson', 'Male', 'david.wilson@example.com', '456-789-0123', '2022-07-25', 5, 1, 'AppDevJr', 600400), -- Bandung, Marketing, Manager: Alice
(5, 'Eva', 'Green', 'Female', 'eva.green@example.com', '567-890-1234', '2021-12-05', 6, 2, 'DataSci', 600300), -- Bandung, IT, Manager: Bob
(6, 'Fiona', 'Hall', 'Female', 'fiona.hall@example.com', '678-901-2345', '2022-10-15', 4, 2, 'AppDevJr', 600500), -- Surabaya, Sales, Manager: Bob
(7, 'George', 'King', 'Male', 'george.king@example.com', '789-012-3456', '2021-09-30', 3, 1, 'UXDes', 600100), -- Jakarta, HR, Manager: Alice
(8, 'Hannah', 'Lee', 'Female', 'hannah.lee@example.com', '890-123-4567', '2023-02-20', 2, 1, 'AppDevJr', 600200), -- Jakarta, Finance, Manager: Alice
(9, 'Ian', 'Moore', 'Male', 'ian.moore@example.com', '901-234-5678', '2022-04-10', 5, 2, 'DataSci', 600400), -- Bandung, Marketing, Manager: Bob
(10, 'Julia', 'Davis', 'Female', 'julia.davis@example.com', '012-345-6789', '2023-01-05', 6, 2, 'ProjMgr', 600600); -- Surabaya, R&D, Manager: Bob

SELECT * FROM tbl_employee

-- DML Irham J -- 


/*DML Start Jihan Azzahra*/
--jobs, jobs_histories, absensi, salary, salary_histories

--INSERT INTO tbl_jobs
INSERT INTO tbl_jobs (id, title, min_salary, max_salary)
VALUES 
('AppDevJr', 'Junior_researcher', 10000000, 12000000),
('WebDevSr', 'Senior_developer', 15000000, 20000000),
('DataSci', 'Data_scientist', 18000000, 25000000),
('ProjMgr', 'Project_manager', 20000000, 30000000),
('UXDes', 'UX Designer', 12000000, 18000000);

SELECT id, title, min_salary, max_salary FROM tbl_jobs;

--INSERT INTO tbl_job_histories
INSERT INTO tbl_job_histories (id_employee, start_date, end_date, status, job, department)
VALUES
(1, '2010-08-18', '2012-10-11', 'Resigned', 'AppDevJr', 600100),
(2, '2013-01-15', '2015-06-20', 'Promoted', 'WebDevSr', 600300),
(3, '2016-02-25', '2018-09-30', 'Transfer', 'DataSci', 600200),
(4, '2019-11-01', '2021-12-31', 'Terminated', 'ProjMgr', 600400),
(5, '2008-07-15', '2019-11-05', 'Retired', 'UXDes', 600300);

SELECT id_employee, start_date, end_date, status, job, department
FROM tbl_job_histories;

--INSERT INTO salary
INSERT INTO tbl_salary (id, salary_per_hour, salary_per_day, working_hour, month_year, totalhour)
VALUES 
(2, 55000, 440000, 8, '2023-10-01', 176),
(3, 60000, 480000, 8, '2023-10-01', 184),
(4, 65000, 520000, 8, '2023-10-01', 152),
(5, 70000, 560000, 8, '2023-10-01', 168),
(6, 80000, 640000, 8, '2023-10-01', 200);

SELECT id, salary_per_hour, salary_per_day, working_hour, absensi, month_year, totalhour
FROM tbl_salary;

--INSERT INTO absensi
INSERT INTO tbl_absensi (id, id_employee, clock_in, clock_out, status, time)
VALUES
(1, 101, '2023-10-01 08:00:00', '2023-10-01 17:00:00', 'Present', '09:00:00'),
(2, 102, '2023-10-01 08:15:00', '2023-10-01 17:15:00', 'Present', '09:00:00'),
(3, 103, '2023-10-01 08:30:00', '2023-10-01 17:30:00', 'Present', '09:00:00'),
(4, 104, '2023-10-01 08:45:00', '2023-10-01 17:45:00', 'Present', '09:00:00'),
(5, 105, '2023-10-01 09:00:00', '2023-10-01 18:00:00', 'Present', '09:00:00');

--INSERT INTO salary_history


/*DML End Jihan Azzahra*/

SELECT * FROM tbl_salary

SELECT * FROM tbl_jobs

SELECT * FROM tbl_departments
