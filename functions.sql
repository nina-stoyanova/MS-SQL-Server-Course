CREATE FUNCTION dbo.udf_GetHelloString()
RETURNS NVARCHAR(50)
AS BEGIN
   RETURN N'Hello'
END

select dbo.udf_GetHelloString()



Create FUNCTION dbo.udf_GetAgeStatus(@age INT)
RETURNS VARCHAR(30)
AS BEGIN
	
	declare @result varchar(30)

	If (@age > 30)
		Begin
			set @result = 'You are fucking old.'
		end
	else
		begin
			set @result = 'You are young.'
		end

		return @result
END

select dbo.udf_GetAgeStatus(15)





CREATE FUNCTION dbo.udf_SumNumbers(@n1 INT,@n2 INT)
RETURNS INT
AS BEGIN
DECLARE @RESULT INT

SET @RESULT = SUM(@n1+@n2)

RETURN @RESULT
END


SELECT dbo.udf_SumNumbers (10,10)




CREATE FUNCTION dbo.udf_GetEmployeeNameById(@ID INT)
RETURNS VARCHAR(30)
AS BEGIN
DECLARE @RESULT VARCHAR(30)

SET @RESULT= (SELECT FirstName 
FROM Employees
WHERE EmployeeID = @ID)

IF @RESULT IS NULL
SET @RESULT = 'NoSuchEmployee'

RETURN @RESULT	
END 


SELECT dbo.udf_GetEmployeeNameById(5)
