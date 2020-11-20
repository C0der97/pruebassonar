CREATE PROCEDURE dbo.procedimiento2   
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
AS   
  @cosa = 'CREATE TABLE sales.visits (
    visit_id INT PRIMARY KEY IDENTITY (1, 1),
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL,
    visited_at DATETIME,
    phone VARCHAR(20),
    store_id INT NOT NULL,
    FOREIGN KEY (store_id) REFERENCES sales.stores (store_id)
);';

exec SP_EXECUTESQL @cosa;
END
GO

