CREATE VIEW [dbo].[V_Project_Admin]
	AS SELECT
		P.[project_id],
		P.[title],
		P.[description],
		P.[video_link],
		P.[level_type],
		P.[creation_date],
		P.[active],
		P.[active_for_validation],
		(Select P.[creator_id], U.[first_name], U.[last_name]) AS creator,
		(Select P.[validation_date], (Select P.[validator_id], U.[first_name], U.[last_name]  Where P.[validator_id] = U.[user_id]) AS validator) AS [validation],
		(Select C.[category_id], [name], C.[description]) AS categories,
		(Select L.[level_id], L.[title]) AS levels,
		(Select F.[funder_id], F.[amount], (Select F.[funder_id], U.[first_name], U.[last_name]  Where F.[funder_id] = U.[user_id]) AS funder) AS funding,
		(Select M.[modification_date]) AS modifications,
		(Select R.[rejection_date], R.[comment], (Select R.[rejector_id], U.[first_name], U.[last_name] Where R.[rejector_id] = U.[user_id]) AS rejector) AS rejections,
		(Select BA.[bank_account_id], BA.[account_number]) AS bank_account
	FROM [dbo].[Projects] P
		LEFT JOIN [dbo].[Users] AS U
			ON P.[creator_id] = U.[user_id]
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
		LEFT JOIN [dbo].[BankAccounts] AS BA
			ON BA.[project_id] = P.[project_id]