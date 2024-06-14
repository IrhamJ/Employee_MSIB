SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Jihan 
-- Description: Update data Profil
-- =============================================

CREATE PROCEDURE SP_update_profile
    @id INT,
    @first_name VARCHAR(25),
    @last_name VARCHAR(25),
    @gender VARCHAR(10),
    @email VARCHAR(25),
    @phone VARCHAR(20),
	@hire_date DATE,
	@salary INT,
	@manager INT,
	@job VARCHAR(10),
	@department INT
AS
BEGIN
    SET NOCOUNT ON; -- Mengurangi hasil pengembalian

    -- Validasi Gender
    IF dbo.func_gender (@gender) = '0'
    BEGIN
        PRINT 'Gender input should be Male or Female';
        RETURN;
    END

    -- Validasi Email
    IF dbo.func_email_format(@email) = '0'
    BEGIN
        PRINT 'Email should be in the correct format!';
        RETURN;
    END

    -- Validasi Phone
    IF dbo.func_phone_number(@phone) = '0'
    BEGIN
        PRINT 'Phone number cannot contain text!';
        RETURN;
    END

    -- Update Data Profile
    UPDATE tbl_employee
    SET 
        first_name = COALESCE(@first_name, first_name),
        last_name = COALESCE(@last_name, last_name),
        gender = COALESCE(@gender, gender),
        email = COALESCE(@email, email),
        phone = COALESCE(@phone, phone),
		hire_date = COALESCE(@hire_date, hire_date),
		salary = COALESCE(@salary, salary),
		manager = COALESCE(@manager, manager),
		job= COALESCE(@job, job),
		department = COALESCE(@department, department)
    WHERE 
        id = @id;

    DECLARE @rows_affected INT;
    SET @rows_affected = @@ROWCOUNT;

    IF @rows_affected > 0
    BEGIN
        PRINT CAST(@rows_affected AS VARCHAR(10)) + ' row(s) updated successfully.';
    END
    ELSE
    BEGIN
        PRINT 'No rows updated.';
    END
END;


-- Menjalankan stored procedure dengan parameter yang diberikan
EXEC SP_update_profile 
    @id = 10,
    @first_name = 'Eriska',
	@last_name = 'Alexa',
	@gender = 'Female',
	@email = 'jan.lexa@example.com',
	@phone = '0123456789',
	@hire_date = '2021-05-13',
	@salary = '2',
	@manager = '1',
	@job = 'AppDevJr',
	@department = '600100'


DROP PROCEDURE SP_update_profile
SELECT * FROM tbl_employee
SELECT * FROM tbl_departments
SELECT * FROM tbl_salary
