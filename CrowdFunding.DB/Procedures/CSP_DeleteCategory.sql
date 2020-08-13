CREATE PROCEDURE [dbo].[CSP_DeleteCategory]
	@CategoryId int
AS
	Delete From [dbo].[Categories]
		Where [category_id] = @CategoryId;
RETURN 0
