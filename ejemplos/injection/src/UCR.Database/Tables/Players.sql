CREATE TABLE [dbo].[Players]
(
	[TeamId] INT NOT NULL,
	[JerseyNumber] INT,
	[Name] NVARCHAR(100),
	PRIMARY KEY([Name], [JerseyNumber], [TeamID]),
)
