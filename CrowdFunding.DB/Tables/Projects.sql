CREATE TABLE [dbo].[Projects]
(
	[project_id] INT NOT NULL IDENTITY,
	[title] VARCHAR(100) NOT NULL,
	[description] VARCHAR(255) NULL,
	[video_link] VARCHAR(255) NULL,
	[active_for_validation] BIT NOT NULL DEFAULT 0,
	[active] BIT NOT NULL DEFAULT 0,
	[level_type] VARCHAR(25) NULL,
	[creation_date] Date NOT NULL,
	[validation_date] Date NULL,
	[creator_id] INT NOT NULL,
	[validator_id] INT NULL
	CONSTRAINT [PK_Project] PRIMARY KEY([project_id]),
	CONSTRAINT [FK_Project_Creator]
		FOREIGN KEY ([creator_id]) REFERENCES [Users]([user_id]),
	CONSTRAINT [FK_Project_Validator]
		FOREIGN KEY ([validator_id]) REFERENCES [Users]([user_id]),
	CONSTRAINT [UQ_Project_title] UNIQUE([title])
)
