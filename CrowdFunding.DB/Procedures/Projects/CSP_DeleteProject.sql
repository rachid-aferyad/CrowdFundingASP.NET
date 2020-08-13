CREATE PROCEDURE [dbo].[CSP_DeleteProject]
	@ProjectId int
AS
	Delete From [dbo].[Projects]
		Where [project_id] = @ProjectId
RETURN 0
