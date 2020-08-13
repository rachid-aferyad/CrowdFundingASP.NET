CREATE PROCEDURE [dbo].[CSP_CheckUser]
	@Email nvarchar(255),
	@Login nvarchar(255),
	@Password nvarchar(20)
As
Begin
	Select VU.*
	From [dbo].[Users] AS U
		LEFT JOIN [dbo].[V_User] AS VU
			ON VU.[user_id] = U.[user_id] 
				And (U.[email] = @Email Or U.[login] = @Login)
				And U.[encoded_password] = [dbo].[SF_HashPassword](@Password, [salt])
End