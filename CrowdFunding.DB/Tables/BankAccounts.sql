CREATE TABLE [dbo].[BankAccounts]
(
	[bank_account_id] INT NOT NULL IDENTITY,
	[account_number] VARCHAR(50) NOT NULL,
	[country] VARCHAR(50) NOT NULL,
	[project_id] int NOT NULL,
	CONSTRAINT [PK_BankAccount] PRIMARY KEY([bank_account_id]),
	CONSTRAINT [FK_BankAccount_Project]
		FOREIGN KEY ([project_id]) REFERENCES [Projects]([project_id]),
	CONSTRAINT [UQ_BankAccount_number] UNIQUE([account_number])
)
