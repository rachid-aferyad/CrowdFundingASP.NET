CREATE PROCEDURE [dbo].[GetAllProjects]
As
Begin
	select * From [dbo].[V_Project_Listing]
	Return 1024;
End