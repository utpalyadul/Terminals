USE [{DATABASE_NAME}]
GO
/****** Object:  StoredProcedure [dbo].[UpdateBeforeConnectExecute]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateBeforeConnectExecute]
	(
	@FavoriteId int,
  @Enabled bit,
  @Command nvarchar(255),
  @CommandArguments nvarchar(255),
  @InitialDirectory nvarchar(255),
  @WaitForExit bit
	)
AS
	update BeforeConnectExecute 
  set
  Enabled = @Enabled, Command = @Command, 
  CommandArguments = @CommandArguments, InitialDirectory = @InitialDirectory,
  WaitForExit = @WaitForExit
  where FavoriteId = @FavoriteId
GO
