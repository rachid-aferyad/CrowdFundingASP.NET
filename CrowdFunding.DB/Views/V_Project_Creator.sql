CREATE VIEW [dbo].[V_Project_Creator]
	AS SELECT 
		P.[project_id],
		P.[creator_id],
		P.[title],
		P.[description],
		P.[video_link],
		P.[level_type],
		P.[creation_date],
		P.[active_for_validation],
		(Select P.[validation_date]) AS [validation],
		(Select C.[category_id], C.[name], C.[description]) AS categories,
		(Select L.[level_id], L.[title], L.[amount], L.[award]) AS levels,
		(Select F.[amount], F.[funding_date]) AS funding,
		(Select M.[modification_date]) AS modifications,
		(Select R.[rejection_date], R.[comment]) AS rejections
	FROM [dbo].[Projects] P
		LEFT JOIN [dbo].[CategoriesProjects] AS CP
			ON CP.[project_id] = P.[project_id]
		LEFT JOIN [dbo].[Categories] AS C
			ON C.[category_id] = CP.[category_id]
		LEFT JOIN [dbo].[Levels] AS L
			ON L.[project_id] = P.[project_id]
		LEFT JOIN [dbo].[Funding] AS F
			ON F.[project_id] = P.[project_id]
		LEFT JOIN [dbo].[Modifications] AS M
			ON M.[project_id] = P.[project_id]
		LEFT JOIN [dbo].[Rejections] AS R
			ON R.[project_id] = P.[project_id]