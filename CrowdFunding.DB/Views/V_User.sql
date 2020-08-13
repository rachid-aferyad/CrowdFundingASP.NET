CREATE VIEW [dbo].[V_User]
	AS Select 
		U.[user_id],
		U.[last_name],
		U.[first_name],
		U.[email],
		U.[login],
		U.[birth_date],
		U.[active]
	From [dbo].[Users] AS U