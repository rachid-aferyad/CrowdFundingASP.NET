CREATE PROCEDURE [dbo].[CSP_AddUser]
	@LastName nvarchar(50),
	@FirstName nvarchar(50),
	@Email nvarchar(255),
	@Login nvarchar(255),
	@Password nvarchar(20),
	@BirthDate DATE,
	@Role nvarchar(25)

As
Begin
	Insert into [dbo].[Users] ([last_name], [first_name], [email], [login], [encoded_password], [birth_date], [role], [salt])
	Values (@LastName, @FirstName, @Email, @Login, [dbo].SF_HashPassword(@Password, @Login), @BirthDate, @Role, @Login);
	select SCOPE_IDENTITY();
End