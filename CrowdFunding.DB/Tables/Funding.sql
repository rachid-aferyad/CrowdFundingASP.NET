CREATE TABLE [dbo].[Funding]
(
	[funder_id] INT NOT NULL,
	[project_id] INT NOT NULL,
	[funding_date] DATE NOT NULL,
	[amount] MONEY NOT NULL,
	CONSTRAINT [PK_Funding] PRIMARY KEY([funder_id], [project_id], [funding_date]),
	CONSTRAINT [FK_Funding_User] 
		FOREIGN KEY ([funder_id]) REFERENCES [Users]([user_id]),
	CONSTRAINT [FK_Funding_Project] 
		FOREIGN KEY ([project_id]) REFERENCES [Projects]([project_id])
)
