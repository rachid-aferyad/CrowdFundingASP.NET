CREATE PROCEDURE [dbo].[CSP_GetAllProjectsForAdmin]
	As
Begin
	select * From [dbo].[V_Project_Admin]
	Return 1024;
End