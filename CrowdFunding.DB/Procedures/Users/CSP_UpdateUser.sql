CREATE PROCEDURE [dbo].[CSP_UpdateUser]
	@UserId int,
	@LastName varchar(50),
	@FirstName varchar(50),
	@BirthDate Date
AS
BEGIN
	UPDATE [dbo].[Users] 
		SET [last_name] = @LastName, [first_name] = @FirstName, [birth_date] = @BirthDate
		Where [user_id] = @UserId
		RETURN;
END