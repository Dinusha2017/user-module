-- Create database
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'user_module_db')
BEGIN
	CREATE DATABASE user_module_db;
END;
GO;

-- Use newly created database
USE user_module_db;
GO;

-- Create tables
IF NOT EXISTS (SELECT * FROM sysobjects where name = 'User_Role' and xtype = 'U')
	CREATE TABLE User_Role(
		id INT IDENTITY(1, 1),
		role_name VARCHAR(15) NOT NULL,
		CONSTRAINT user_role_pk PRIMARY KEY (id)
	);
GO;

IF NOT EXISTS (SELECT * FROM sysobjects where name = 'User' and xtype = 'U')
	CREATE TABLE "User"(
		id INT IDENTITY(10000, 1),
		first_name VARCHAR(20) NOT NULL,
		last_name VARCHAR(20),
		email VARCHAR(320) NOT NULL,
		address VARCHAR(100) NOT NULL,
		country VARCHAR(20) NOT NULL,
		user_role INT NOT NULL,
		CONSTRAINT user_pk PRIMARY KEY (id),
		CONSTRAINT user_userRole_fk FOREIGN KEY (user_role) REFERENCES User_Role (id)
	);
GO;

IF NOT EXISTS (SELECT * FROM sysobjects where name = 'User_Phone_Number' and xtype = 'U')
	CREATE TABLE User_Phone_Number(
		user_id INT NOT NULL,
		country_code VARCHAR(5) DEFAULT '+94',
		phone_number VARCHAR(10) NOT NULL,
		CONSTRAINT user_phone_number_pk PRIMARY KEY (user_id, country_code, phone_number),
		CONSTRAINT user_phone_number_userId_fk FOREIGN KEY (user_id) REFERENCES "User"(id)
	);
GO;

-- Create new user
CREATE USER 'Dinusha' FOR LOGIN 'DINUSHA\dinus';
GO;

-- Grant permissions to user
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER, REFERENCES, CONTROL ON User_Role TO Dinusha;
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER, REFERENCES, CONTROL ON "User" TO Dinusha;
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER, REFERENCES, CONTROL ON User_Phone_Number TO Dinusha;