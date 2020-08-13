CREATE TABLE [dbo].[Companies]
(
	[company_id] INT NOT NULL IDENTITY,
	[name] VARCHAR(100) NOT NULL,
	[vat_number] VARCHAR(25) NOT NULL,
	[address_mail_box] INT NOT NULL,
	[address_number] INT NOT NULL,
	[address_street] VARCHAR(100) NOT NULL,
	[address_city] VARCHAR(50) NOT NULL,
	[address_country] VARCHAR(50) NOT NULL,
	[owner_id] INT NOT NULL,
	CONSTRAINT [PK_Company] PRIMARY KEY([company_id]),
	CONSTRAINT [UQ_Company_name] UNIQUE([name]),
	CONSTRAINT [UQ_Company_vat_number] UNIQUE([vat_number]),
	CONSTRAINT [UQ_Company_address]
		UNIQUE([address_mail_box], [address_number],[address_street], [address_city], [address_country]),
	CONSTRAINT [FK_Company_User] 
		FOREIGN KEY ([owner_id]) REFERENCES [Users]([user_id])
)
