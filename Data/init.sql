USE master; 
GO 

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'OregonOpenData')
BEGIN
	DROP DATABASE OregonOpenData; 
END; 
CREATE DATABASE OregonOpenData; 
GO 

USE OregonOpenData; 
GO 

IF OBJECT_ID('NotaryPublic', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.NotaryPublic 
	(
		CommissionNbr INT PRIMARY KEY NOT NULL, 
		CommissionName VARCHAR(50), 
		CommissionExpirationDate VARCHAR(10), 
		PhoneNumber VARCHAR(15), 
		EmailAddress VARCHAR(50), 
		WebsiteURL VARCHAR(100), 
		IsBilingual BIT NOT NULL, 
		Languages VARCHAR(50), 
		RONApproved BIT NOT NULL, 
		IPENApproved BIT NOT NULL, 
		City VARCHAR(20), 
		PublicStreetAddress VARCHAR(50),
		Zipcode INT
	);
END;
