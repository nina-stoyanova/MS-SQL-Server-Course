create view V_TestView
as
SELECT Top 50 FirstName, COUNT (Name) AS Projects 
FROM Employees
JOIN EmployeesProjects ON
Employees.EmployeeID=EmployeesProjects.EmployeeID
JOIN Projects ON
EmployeesProjects.ProjectID=Projects.ProjectID
GROUP BY FirstName
ORDER BY COUNT(Name) DESC



select * from dbo.V_TestView