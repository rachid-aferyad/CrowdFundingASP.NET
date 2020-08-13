CREATE TABLE [dbo].[CategoriesProjects]
(
	[category_id] INT NOT NULL,
	[project_id] INT NOT NULL,
	CONSTRAINT [PK_CategoryProject] PRIMARY KEY([category_id], [project_id]),
	CONSTRAINT [FK_CategoryProject_Category]
		FOREIGN KEY([category_id]) REFERENCES [Categories]([category_id])
		ON DELETE CASCADE,
	CONSTRAINT [FK_CategoryProject_Project]
		FOREIGN KEY([project_id]) REFERENCES [Projects]([project_id])
		ON DELETE CASCADE
)
