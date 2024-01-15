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


-- Create new user
CREATE USER 'Dinusha' FOR LOGIN 'DINUSHA\dinus';
GO;

-- Grant permissions to user
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER, REFERENCES, CONTROL ON 