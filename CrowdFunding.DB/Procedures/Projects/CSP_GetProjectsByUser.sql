CREATE PROCEDURE [dbo].[CSP_GetProjectsByUser]
	@UserId int
As
Begin
	select * From [dbo].[V_Project_Creator] AS PC
	Where PC.[creator_id] = @UserId
	Return 1024;
End