CREATE VIEW [dbo].[V_User_Company]
	AS SELECT
		U.[user_id],
		U.[last_name],
		U.[first_name],
		U.[email],
		U.[login],
		U.[birth_date],
		U.[active],
		C.[company_id],
		C.[name] AS [company_name],
		C.[vat_number] AS [company_vat_number],
		C.[address_mail_box] AS [company_address_mail_box],
		C.[address_number] AS [company_address_number],
		C.[address_street] AS [company_address_street],
		C.[address_city] AS [company_address_city],
		C.[address_country] AS [company_address_country]
		FROM [dbo].[V_User] AS U
			LEFT JOIN [dbo].[Companies] AS C
				ON C.[owner_id] = U.[user_id]
