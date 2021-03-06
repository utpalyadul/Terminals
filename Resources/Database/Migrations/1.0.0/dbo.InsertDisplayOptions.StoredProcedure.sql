USE [{DATABASE_NAME}]
GO
/****** Object:  StoredProcedure [dbo].[InsertDisplayOptions]    Script Date: 12/10/2012 22:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertDisplayOptions]
	(
	@FavoriteId int,
  @Height int,
  @Width int,
  @Size tinyint,
  @Colors tinyint
	)
AS
	insert into DisplayOptions 
  (FavoriteId, Height, Width, Size, Colors)
  values  
  (@FavoriteId, @Height, @Width, @Size, @Colors)
GO
