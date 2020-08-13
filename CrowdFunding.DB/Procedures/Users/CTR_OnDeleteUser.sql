Create Trigger [dbo].[CTR_OnDeleteUser]
On [dbo].[Users]
Instead Of Delete
As
Begin
	Update [dbo].[Users] Set [active] = 0
		where [user_id] in (select [user_id] from deleted)
End