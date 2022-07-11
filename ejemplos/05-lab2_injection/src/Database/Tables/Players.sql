CREATE TABLE [dbo].[Players] (
    [Id]           BIGINT         IDENTITY (1, 1) NOT NULL,
    [Name]         NVARCHAR (MAX) NOT NULL,
    [TeamId]       NVARCHAR (450),
    [JerseyNumber] INT,
    CONSTRAINT [PK_Players] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Players_Teams_TeamId] FOREIGN KEY ([TeamId]) REFERENCES [dbo].[Teams] ([Id])
);

GO
