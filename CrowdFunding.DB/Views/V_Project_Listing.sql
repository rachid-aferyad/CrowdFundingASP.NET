CREATE VIEW [dbo].[V_Project_Listing]
	AS SELECT 
		P.[project_id],
		P.[title],
		P.[level_type],
		P.[creation_date],
		C.[category_id],
		(Select SUM(F.[amount])) AS total_funding
	FROM [dbo].[Projects] P
		LEFT JOIN [dbo].[CategoriesProjects] AS CP
			ON CP.[project_id] = P.[project_id]
		LEFT JOIN [dbo].[Categories] AS C
			ON C.[category_id] = CP.[category_id]
		LEFT JOIN [dbo].[Funding] AS F
			ON F.[project_id] = P.[project_id]