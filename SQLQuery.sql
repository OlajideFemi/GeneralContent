-- Select all records from EmployeeDemographics where Age is greater than or equal to 30
SELECT *
FROM EmployeeDemographics
WHERE Age >= 30;

-- Select all records from EmployeeDemographics where Age is less than or equal to 30
SELECT *
FROM EmployeeDemographics
WHERE Age <= 30;

-- Select all records from EmployeeDemographics where Age is less than or equal to 32 and Gender is Male
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male';

-- Select all records from EmployeeDemographics where Age is less than or equal to 32 or Gender is Male
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male';

-- Select all records from EmployeeDemographics where LastName starts with 'S'
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%';

-- Select all records from EmployeeDemographics where LastName contains 'S'
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%';

-- Select all records from EmployeeDemographics where LastName contains 'So'
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%So%';

-- Select all records from EmployeeDemographics where LastName matches the pattern 'S%c%ott%'
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%c%ott%';

-- Select all records from EmployeeDemographics where FirstName is not NULL
SELECT *
FROM EmployeeDemographics
WHERE FirstName IS NOT NULL;

-- Select all records from EmployeeDemographics where FirstName is either 'Jim' or 'Michael'
SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim' OR FirstName = 'Michael';

-- Select all records from EmployeeDemographics where FirstName is 'Jim' or 'Michael'
SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael');

-- Select Gender and count of Gender from EmployeeDemographics grouped by Gender
SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender;

-- Select all records from EmployeeDemographics
SELECT *
FROM EmployeeDemographics;

-- Select Gender, Age, and count of Gender from EmployeeDemographics grouped by Gender and Age
SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age;

-- Select Gender and count of Gender from EmployeeDemographics where Age is greater than 31, grouped by Gender
SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender;

-- Select Gender and count of Gender from EmployeeDemographics where Age is greater than 31, ordered by count of Gender in ascending order
SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender ASC;

-- Select Gender and count of Gender from EmployeeDemographics where Age is greater than 31, ordered by count of Gender in descending order
SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC;

-- Select all records from EmployeeDemographics, ordered by Age
SELECT *
FROM EmployeeDemographics
ORDER BY Age;

-- Select all records from EmployeeDemographics, ordered by Age and then by Gender
SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender;

-- Select all records from EmployeeDemographics, ordered by Age in descending order and then by Gender in descending order
SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC;

-- Select all records from EmployeeDemographics, ordered by the 4th column (Age) in descending order and then by the 5th column (Gender) in descending order
SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC;

-- Select all columns from EmployeeDemographics and EmployeeSalary tables, joining on EmployeeID
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

-- Select all columns from EmployeeDemographics and EmployeeSalary tables, performing a full outer join on EmployeeID
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

-- Select all columns from EmployeeDemographics and EmployeeSalary tables, performing a left outer join on EmployeeID
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

-- Select all columns from EmployeeDemographics and EmployeeSalary tables, performing a right outer join on EmployeeID
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

-- Select specific columns from EmployeeDemographics and EmployeeSalary tables, performing an inner join on EmployeeID
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

-- Select specific columns from EmployeeDemographics and EmployeeSalary tables, performing an inner join on EmployeeID
SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

-- Select specific columns from EmployeeDemographics and EmployeeSalary tables, performing a right outer join on EmployeeID
SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

-- Select specific columns from EmployeeDemographics and EmployeeSalary tables, performing a right outer join on EmployeeID
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

-- Select specific columns from EmployeeDemographics and EmployeeSalary tables, performing a left outer join on EmployeeID
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

-- Select EmployeeID, FirstName, LastName, and Salary from EmployeeDemographics and EmployeeSalary tables, inner joining on EmployeeID, excluding records where FirstName is 'Michael', and ordering by Salary
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary;

-- Select EmployeeID, FirstName, LastName, and Salary from EmployeeDemographics and EmployeeSalary tables, inner joining on EmployeeID, excluding records where FirstName is 'Michael', and ordering by Salary in descending order
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC;

-- Select Jobtitle and Salary from EmployeeDemographics and EmployeeSalary tables, inner joining on EmployeeID, where JobTitle is 'Salesman'
SELECT Jobtitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman';

-- Select Jobtitle and average Salary from EmployeeDemographics and EmployeeSalary tables, inner joining on EmployeeID, where JobTitle is 'Salesman', grouped by Jobtitle
SELECT Jobtitle, AVG(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY Jobtitle;

-- Select all records from EmployeeDemographics table
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics;

-- Create the WareHouseEmployeeDemographics table
CREATE TABLE SQLTutorial.dbo.WareHouseEmployeeDemographics (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10)
);

-- Insert the specified details into the WareHouseEmployeeDemographics table
INSERT INTO SQLTutorial.dbo.WareHouseEmployeeDemographics (EmployeeID, FirstName, LastName, Age, Gender)
VALUES 
    (1050, 'Roy', 'Anderson', 31, 'Male'), -- Inserting details for Roy Anderson
    (1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'), -- Inserting details for Hidetoshi Hasagawa
    (1052, 'Val', 'Johnson', 31, 'Female'); -- Inserting details for Val Johnson

INSERT INTO SQLTutorial.dbo.WareHouseEmployeeDemographics (EmployeeID, FirstName, LastName, Gender)
VALUES 
    (1013, 'Darryl', 'Philbin', 'Male'); -- Inserting details for Darryl Philbin

-- Select all records from EmployeeDemographics table
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics;

-- Select all records from WareHouseEmployeeDemographics table
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics;

-- Perform a full outer join between EmployeeDemographics and EmployeeSalary tables where JobTitle is 'Salesman'
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman';

-- Perform a full outer join between EmployeeDemographics and WareHouseEmployeeDemographics tables
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
FULL OUTER JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID;

-- Select all records from EmployeeDemographics table and combine with records from WareHouseEmployeeDemographics table (removing duplicates)
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics;

-- Select all records from EmployeeDemographics table and combine with records from WareHouseEmployeeDemographics table (keeping all records including duplicates)
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
UNION ALL
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics;

-- Select all records from EmployeeDemographics table
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics;

-- Select all records from EmployeeSalary table and order them by EmployeeID
SELECT *
FROM SQLTutorial.dbo.EmployeeSalary
ORDER BY EmployeeID;

-- Select EmployeeID, FirstName, and Age from EmployeeDemographics table and combine with EmployeeID, JobTitle, and Salary from EmployeeSalary table, ordering the results by EmployeeID
SELECT EmployeeID, FirstName, Age
FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeSalary
ORDER BY EmployeeID;

-- Select all records from EmployeeDemographics table
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics;


-- Select FirstName, LastName, and Age from EmployeeDemographics table, categorizing individuals as 'Old' if Age > 30, otherwise 'Young'. Results are ordered by Age.
SELECT FirstName, LastName, Age,
CASE 
	WHEN Age > 30 THEN 'Old'
	ELSE 'Young'
END
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age;

-- Select FirstName, LastName, and Age from EmployeeDemographics table, categorizing individuals as 'Stanley' if Age = 38, 'Old' if Age > 30, otherwise 'Baby'. Results are ordered by Age.
SELECT FirstName, LastName, Age,
CASE 
	WHEN Age = 38 THEN 'Stanley'
	WHEN Age > 30 THEN 'Old'
	ELSE 'Baby'
END
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age;

-- Select FirstName, LastName, and Age from EmployeeDemographics table, categorizing individuals as 'Old' if Age > 30, 'Young' if Age BETWEEN 27 AND 30, otherwise 'Baby'. Results are ordered by Age.
SELECT FirstName, LastName, Age,
CASE 
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age;

-- Select FirstName, LastName, JobTitle, and Salary from EmployeeDemographics and EmployeeSalary tables, joining on EmployeeID.
SELECT FirstName, LastName, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
JOIN SQLTutorial.dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

