CREATE Trigger [dbo].[CTR_OnDeleteCategory]
	On [dbo].[Categories]
Instead Of Delete
As
Begin
	Delete From [dbo].[CategoriesProjects]
		Where [category_id] in (select [category_id] from deleted)
End