CREATE Trigger [dbo].[CTR_ProjectModification]
	On [dbo].[Projects]
After Update
As
Begin
	Declare @ProjectId int = (select [project_id] from inserted);
	Insert into [dbo].[Modifications] ([project_id], [modification_date])
		Values(@ProjectId, GETDATE());

End