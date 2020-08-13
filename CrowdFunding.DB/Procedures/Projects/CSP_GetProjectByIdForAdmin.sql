CREATE PROCEDURE [dbo].[CSP_GetProjectByIdForAdmin]
	@ProjectId int
	As
Begin
	select * From [dbo].[V_Project_Admin] AS PA
	Where PA.[project_id] = @ProjectId
	Return 1024;
End