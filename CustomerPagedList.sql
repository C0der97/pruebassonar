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