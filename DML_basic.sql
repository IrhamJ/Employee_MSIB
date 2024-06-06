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
-- DML Irham J -- 


-- Hiraukan Coba coba
SELECT 
    d.name AS DepartmentName,
    l.city AS City,
    l.state_province AS Province,
    c.name AS Country,
    r.name AS Region
FROM 
    tbl_departments d
JOIN 
    tbl_locations l ON d.location = l.id
JOIN 
    tbl_countries c ON l.country = c.id
JOIN 
    tbl_regions r ON c.region = r.id;

-- Verifikasi data
SELECT * FROM tbl_departments d
JOIN tbl_locations l ON d.location = l.id
JOIN tbl_countries c ON l.country = c.id
JOIN tbl_regions r ON c.region = r.id;
