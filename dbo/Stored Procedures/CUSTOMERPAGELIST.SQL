USE [NORTHWND]
GO
/****** Object:  StoredProcedure [dbo].[CustOrderHist]    Script Date: 3/12/2020 10:46:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CustomerPagedList]  
@page int,  
@rows int 
AS 
BEGIN  

 SELECT [Id]  ,[FirstName] ,[LastName] ,[City],[Country],[Phone],
 COUNT(*) OVER() TotalRecords
 FROM [Customer]
 order by [Id]
 OFFSET @page - 1 ROWS                  
 FETCH NEXT @rows ROWS ONLY
 
 
END
