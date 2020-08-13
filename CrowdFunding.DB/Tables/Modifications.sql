CREATE TABLE [dbo].[Modifications]
(
	[project_id] INT NOT NULL,
	[modification_date] DATE NOT NULL,
	CONSTRAINT [PK_Modification] PRIMARY KEY([project_id], [modification_date]),
	CONSTRAINT [FK_Modification_Project] 
		FOREIGN KEY ([project_id]) REFERENCES [Projects]([project_id])
)
