CREATE TABLE [dbo].[Users]
(
	[user_id] INT NOT NULL IDENTITY,
	[login] VARCHAR(255) NOT NULL,
	[email] VARCHAR(255) NOT NULL,
	[last_name] VARCHAR(50) NOT NULL,
	[first_name] VARCHAR(50) NOT NULL,
	[encoded_password] BINARY(64) NOT NULL,
	[birth_date] DATE NULL,
	[salt] VARCHAR(255) NOT NULL,
	[active] BIT not null DEFAULT 0,
	[role] VARCHAR(25) NOT NULL DEFAULT 'SIMPLE_USER',
	CONSTRAINT [PK_User] PRIMARY KEY([user_id]),
	CONSTRAINT [UQ_User_email] UNIQUE([email]),
	CONSTRAINT [UQ_User_login] UNIQUE([login]),
	CONSTRAINT [UQ_User_salt] UNIQUE([salt])
)
