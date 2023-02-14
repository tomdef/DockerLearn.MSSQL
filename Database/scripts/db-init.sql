USE [master]
GO

CREATE DATABASE [DockerLearnDatabase]
GO

USE [DockerLearnDatabase]
GO

CREATE TABLE [TestTable] (
	[id] INT NOT NULL, 
	[name] NVARCHAR(20) NOT NULL,
	PRIMARY KEY (id)
)
GO

INSERT INTO [TestTable] VALUES (1, 'some name #01');
INSERT INTO [TestTable] VALUES (2, 'some name #02');
INSERT INTO [TestTable] VALUES (3, 'some name #03');
GO