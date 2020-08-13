CREATE PROCEDURE [dbo].[CSP_AddCategoryToProject]
	@CategoryId int not null,
	@ProjectId int not null
AS
	Insert into [dbo].[CategoriesProjects] ([category_id], [project_id])
	Values (@CategoryId, @ProjectId)
RETURN 0
