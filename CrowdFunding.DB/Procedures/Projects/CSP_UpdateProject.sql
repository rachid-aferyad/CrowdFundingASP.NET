CREATE PROCEDURE [dbo].[CSP_UpdateProject]
	@Tilte varchar(100),
	@Description varchar(255),
	@VideoLink varchar(255),
	@LevelType varchar(25)

AS
BEGIN
	UPDATE [dbo].[Projects] 
		SET [title] = @Tilte, [description] = @Description, [video_link] = @VideoLink, [level_type] = @LevelType;
		RETURN;
END