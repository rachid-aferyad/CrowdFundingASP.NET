CREATE TYPE CategoryTable
   AS TABLE
      ( category_id INT NOT NULL)
GO

CREATE PROCEDURE [dbo].[CSP_AddProject]
	@Title nvarchar(100),
	@Description nvarchar(255),
	@VideoLink nvarchar(255),
	@LevelType bit,
	@BankAccountId int,
	@Categories [dbo].[CategoryTable] READONLY

As
Begin
	Declare @ProjectId INT;
	Declare @CategoryId INT;

	Insert into [dbo].[Projects] ([title], [description], [video_link], [level_type])
	Values (@Title, @Description, @VideoLink, @LevelType, @BankAccountId);
	select @ProjectId = SCOPE_IDENTITY();

	Select *
	Into   #Temp
	From   @Categories

	--Create Table #temp
	--(category_id INT NOT NULL)

	--Insert into #temp select category_id from @Categories

	WHILE EXISTS(SELECT * FROM #Temp)
		Begin

			Select Top 1 @CategoryId = #Temp.category_id From #Temp

			Insert into [dbo].[CategoriesProjects] ([category_id], [project_id])
			Values (@CategoryId, @ProjectId)
	
			Delete From #Temp Where Id = @CategoryId

	End
End