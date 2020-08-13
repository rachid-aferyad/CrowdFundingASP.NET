CREATE TABLE [dbo].[Levels]
(
	[level_id] INT NOT NULL IDENTItY,
	[title] VARCHAR(100) NOT NULL,
	[amount] MONEY NOT NULL,
	[award] VARCHAR(255) NOT NULL,
	[project_id] INT NOT NULL,
    CONSTRAINT [PK_Level] PRIMARY KEY([level_id]),
	CONSTRAINT [FK_Level_Project]
		FOREIGN KEY ([project_id]) REFERENCES [Projects]([project_id])
		ON DELETE CASCADE
)
