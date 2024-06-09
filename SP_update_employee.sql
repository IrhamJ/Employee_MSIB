SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Irvandhar
-- Create date: 09/06/2024
-- Description:	Update Data Employee
-- =============================================
CREATE PROCEDURE SP_update_employee(
    @id INT,
    @first_name VARCHAR(25),
    @last_name VARCHAR(25) = NULL,
    @gender VARCHAR(10),
    @email VARCHAR(25),
    @phone VARCHAR(25) = NULL,
    @hire_date DATE
)
AS
BEGIN
    DECLARE @Valid_gender BIT;
    DECLARE @Valid_email BIT;
    DECLARE @Valid_phone BIT;

    SET @Valid_gender = dbo.func_gender(@gender);
    SET @Valid_email = dbo.func_email_format(@email);
    SET @Valid_phone = dbo.func_phone_number(@phone);
	--Proses validasi gender, email, phone_number
    IF @Valid_gender = 1 AND @Valid_email = 1 AND @Valid_phone = 1
    BEGIN
        UPDATE tbl_employee
        SET
            first_name = COALESCE(@first_name, first_name),
            last_name = COALESCE(@last_name, last_name),
            gender = COALESCE(@gender, gender),
            email = COALESCE(@email, email),
            phone = COALESCE(@phone, phone),
            hire_date = COALESCE(@hire_date, hire_date)
        WHERE
            id = @id;

        PRINT 'Data Employee Updated!';
    END
    ELSE
    BEGIN
        PRINT 'Invalid data!';
    END
END;
