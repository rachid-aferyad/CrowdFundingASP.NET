CREATE PROCEDURE [dbo].[CSP_AddCategory]
	@Name nvarchar(100),
	@Description nvarchar(255)
As
Begin
	Insert into [dbo].[Categories] ([name], [description])
	Values (@Name, @Description);
	select SCOPE_IDENTITY();
End