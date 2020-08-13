CREATE Trigger [dbo].[CTR_OnDeleteProject]
	On [dbo].[Projects]
Instead Of Delete
As
Begin
	
	Update [dbo].[Projects] Set [active] = 0
		where [project_id] in (select [project_id] from deleted)

	--Delete From [dbo].[CategoriesProjects]
		--Where [project_id] in (select Id from deleted)
End