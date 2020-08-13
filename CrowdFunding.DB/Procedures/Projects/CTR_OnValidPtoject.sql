CREATE Trigger [dbo].[CTR_OnValidPtoject]
On [dbo].[Projects]
Instead Of Delete
As
Begin
	Update [dbo].[Projects] Set [active] = 0
		where [project_id] in (select [project_id] from deleted)
End