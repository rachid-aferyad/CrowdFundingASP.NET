CREATE TABLE [dbo].[Rejections]
(
	[rejector_id] INT NOT NULL,
	[project_id] INT NOT NULL,
	[rejection_date] DATE NOT NULL,
	[comment] VARCHAR(255) NOT NULL,
	CONSTRAINT [PK_Rejection] PRIMARY KEY([rejector_id], [project_id], [rejection_date]),
	CONSTRAINT [FK_Rejection_User] 
		FOREIGN KEY ([rejector_id]) REFERENCES [Users]([user_id]),
	CONSTRAINT [FK_Rejection_Project] 
		FOREIGN KEY ([project_id]) REFERENCES [Projects]([project_id])
)
