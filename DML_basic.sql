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

