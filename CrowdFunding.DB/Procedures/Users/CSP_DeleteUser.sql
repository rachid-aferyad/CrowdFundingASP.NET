CREATE PROCEDURE [dbo].[CSP_DeleteUser]
	@UserId int
As
Begin
	Delete
	From [dbo].[Users]
	where [user_id] = @UserId;
End