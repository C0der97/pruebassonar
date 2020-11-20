CREATE PROCEDURE [dbo].[ValidateUser]  
@email varchar(100),  
@password varchar(20) 
AS 
BEGIN  
SELECT [Id],[Email],[FirstName],[LastName] ,[Roles]  
FROM [dbo].[User]  
WHERE [Email]=@email AND [Password]=@password 
END
