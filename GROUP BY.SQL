SELECT COUNT (*) AS Count
FROM WizzardDeposits



SELECT MAX(MagicWandSize) AS LongestMagicWand
FROM WizzardDeposits



SELECT MAX (DepositGroup) ,MAX (MagicWandSize) AS LongestMagicWand
FROM WizzardDeposits
GROUP BY DepositGroup



SELECT TOP(2) DepositGroup
FROM WizzardDeposits
GROUP BY DepositGroup
ORDER BY AVG(MagicWandSize)



SELECT DepositGroup, SUM(DepositAmount) AS TotalSum
FROM WizzardDeposits
GROUP BY DepositGroup



SELECT DepositGroup, SUM (DepositAmount) AS TotalSum
FROM WizzardDeposits
WHERE MagicWandCreator = 'Ollivander family'
GROUP BY DepositGroup




SELECT DepositGroup, MagicWandCreator, MIN(DepositCharge) AS MinDepositCharge
FROM WizzardDeposits
GROUP BY DepositGroup, MagicWandCreator
ORDER BY MagicWandCreator, DepositGroup




SELECT
CASE

WHEN Age BETWEEN 0 AND 10 THEN '[0-10]'
WHEN Age BETWEEN 11 AND 20 THEN '[11-20]'
WHEN Age BETWEEN 21 AND 30 THEN '[21-30]'
WHEN Age BETWEEN 31 AND 40 THEN '[31-40]'
WHEN Age BETWEEN 41 AND 50 THEN '[41-50]'
WHEN Age BETWEEN 51 AND 60 THEN '[51-60]'
WHEN Age >= 61 THEN '[61+]'

END AS AgeGroup, COUNT(*) AS WizardCount

FROM WizzardDeposits

GROUP BY 
CASE
WHEN Age BETWEEN 0 AND 10 THEN '[0-10]'
WHEN Age BETWEEN 11 AND 20 THEN '[11-20]'
WHEN Age BETWEEN 21 AND 30 THEN '[21-30]'
WHEN Age BETWEEN 31 AND 40 THEN '[31-40]'
WHEN Age BETWEEN 41 AND 50 THEN '[41-50]'
WHEN Age BETWEEN 51 AND 60 THEN '[51-60]'
WHEN Age >= 61 THEN '[61+]'
END



SELECT LEFT(FirstName,1) AS FirstLetter 
FROM WizzardDeposits 
WHERE DepositGroup ='Troll Chest'
GROUP BY LEFT(FirstName,1)
ORDER BY LEFT(FirstName,1) 

 

SELECT 
	DepositGroup,
	 CASE 
	 WHEN DepositExpirationDate >= '01-01-1985' THEN 0
	 WHEN DepositExpirationDate < '01-01-1985' THEN 1
	 END AS IsDepositExpired,
	
	AVG (DepositInterest) AS AvrageInterest
FROM 
	WizzardDeposits
	WHERE DepositStartDate > '01-01-1985'
GROUP BY 
	DepositGroup,
	CASE 
	 WHEN DepositExpirationDate >= '01-01-1985' THEN 0
	 WHEN DepositExpirationDate <'01-01-1985' THEN 1
	 END
	ORDER BY DepositGroup DESC, IsDepositExpired ASC




SELECT DepartmentID, SUM (Salary) AS TotalSalary
FROM Employees
GROUP BY DepartmentID 
ORDER BY DepartmentID



SELECT DepartmentID, MIN(Salary)
FROM Employees
WHERE DepartmentID IN (2,5,7) AND HireDate >= '01-01-2000'
GROUP BY DepartmentID
 


SELECT DepartmentID, MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY DepartmentID
HAVING MAX(Salary) < 30000 OR  MAX(Salary) > 70000




	SELECT COUNT(Salary) AS COUNT
	FROM Employees
	WHERE ManagerID IS NULL






















 