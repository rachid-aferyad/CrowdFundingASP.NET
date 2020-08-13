CREATE TABLE [dbo].[Categories]
(
	[category_id] INT NOT NULL IDENTITY,
	[name] VARCHAR(50) NOT NULL,
	[description] VARCHAR(255) NULL,
	CONSTRAINT [PK_Categor] PRIMARY KEY([category_id]),
	CONSTRAINT [UQ_Category_name] UNIQUE([name])
)
