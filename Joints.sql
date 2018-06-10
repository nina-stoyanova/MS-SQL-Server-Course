SELECT MountainRange, PeakName, Elevation
FROM Mountains
LEFT JOIN Peaks ON
Peaks.MountainId= Mountains.Id
WHERE MountainRange = 'Rila'
ORDER BY Elevation DESC 



SELECT FirstName,LastName,Name
FROM Employees 
Left JOIN Addresses ON
Employees.AddressID= Addresses.AddressID

Left JOIN Towns ON
Addresses.AddressID=Towns.TownID



SELECT FirstName, Name
FROM Employees
JOIN EmployeesProjects ON
Employees.EmployeeID=EmployeesProjects.EmployeeID
JOIN Projects ON
EmployeesProjects.ProjectID=Projects.ProjectID
WHERE FirstName = 'Guy'



SELECT FirstName, COUNT (Name) AS Projects 
FROM Employees
JOIN EmployeesProjects ON
Employees.EmployeeID=EmployeesProjects.EmployeeID
JOIN Projects ON
EmployeesProjects.ProjectID=Projects.ProjectID
GROUP BY FirstName
ORDER BY COUNT(Name) DESC







