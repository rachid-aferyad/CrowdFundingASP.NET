CREATE PROCEDURE [dbo].[CSP_GetProjetById]
	@ProjectId int
	As
Begin
	select * From [dbo].[V_Project_Details] AS PD
	Where PD.[project_id] = @ProjectId
	Return 1024;
End