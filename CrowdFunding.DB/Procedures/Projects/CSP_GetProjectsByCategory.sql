CREATE PROCEDURE [dbo].[CSP_GetProjectsByCategory]
	@CategoryId int
As
Begin
	select * From [dbo].[V_Project_Listing] AS PL
	Where PL.[category_id] = @CategoryId
	Return 1024;
End