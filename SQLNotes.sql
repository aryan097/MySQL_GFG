MySQL Workbench Link: https://dev.mysql.com/downloads/workbench/

Session 1: BASICS OF SQL
SHOW databases
CREATE database if not exists techforallwithpriya
USE techforallwithpriya
SELECT database()

CREATE TABLE employee
(
	FirstName	varchar(50),
    LastName	varchar(50),
    Age			INT,
    Salary		INT,
    Location	varchar(50)
);

SHOW tables

desc employee;

INSERT INTO employee VALUES ("Priya", "Kumar", "Sharma", 27, 25000, "Bengaluru");
INSERT INTO employee VALUES ("Satish", "Kumar", "Sinha", 26, 45000, "Bengaluru");
INSERT INTO employee VALUES ("Yogesh", "Lalit", "Sharma", 25, 15000, "Gurugram");
INSERT INTO employee VALUES ("Priyesh", "Kumar", "Yadav", 27, 50000, "Bengaluru");
INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES ("Ram", "Sharma", 29, 45000, "Noida");
INSERT INTO employee VALUES ("Rani", "Kumari", "Sinha", 29, 50000, "Bengaluru");
INSERT INTO employee VALUES ("Rani", "Kumari", "Sinha", 29, 50000, "Bengaluru");
INSERT INTO employee(MiddleName, LastName, Age, Salary, Location) VALUES ("Kumari", "Sinha", 29, 50000, "Bengaluru");

DROP table employee;
DROP database techforallwithpriya;

## Not Null
CREATE TABLE employee
(
	FirstName	varchar(50)	NOT NULL,
    MiddleName	varchar(50),
    LastName	varchar(50)	NOT NULL,
    Age			INT	NOT NULL,
    Salary		INT	NOT NULL,
    Location	varchar(50)	NOT NULL
)


## Default Definition
CREATE TABLE employee
(
	FirstName	varchar(50)	NOT NULL,
    MiddleName	varchar(50),
    LastName	varchar(50)	NOT NULL,
    Age			INT	NOT NULL,
    Salary		INT	NOT NULL,
    Location	varchar(50)	DEFAULT "Bengaluru" NOT NULL
)



## Primary Key
CREATE TABLE employee
(
	EmpID		INT		PRIMARY KEY,
	FirstName	varchar(50)	NOT NULL,
  MiddleName	varchar(50),
  LastName	varchar(50)	NOT NULL,
  Age			INT	NOT NULL,
  Salary		INT	NOT NULL,
  Location	varchar(50)	DEFAULT "Bengaluru" NOT NULL
)

CREATE TABLE employee
(
	EmpID		INT	AUTO_INCREMENT,
	FirstName	varchar(50)	NOT NULL,
  MiddleName	varchar(50),
  LastName	varchar(50)	NOT NULL,
  Age			INT	NOT NULL,
  Salary		INT	NOT NULL,
  Location	varchar(50)	DEFAULT "Bengaluru" NOT NULL
  PRIMARY KEY(EmpID)
)
INSERT INTO employee(FirstName, LastName, Age, Salary) VALUES ("Priya", "Bhatia", 26, 200000);
=====================================================================================================================================================================
Session 2: Retrieval Commands from Database

Unique Key:
CREATE TABLE employee
(
	EmpID		INT	UNIQUE KEY,
	FirstName	varchar(50)	NOT NULL,
  MiddleName	varchar(50),
  LastName	varchar(50)	NOT NULL,
  Age			INT	NOT NULL,
  Salary		INT	NOT NULL,
  Location	varchar(50)	DEFAULT "Bengaluru" NOT NULL
)


Data Retrieval Commands:

Filter commands
SELECT * FROM employee WHERE Age < 29
SELECT * FROM employee WHERE FirstName = 'sumedha'

By default, it is case insensitive 

Manually, we can make it case sensitive by using the below command:
SELECT * FROM employee WHERE binary FirstName = 'sumedha'


Alias Naming
SELECT FirstName as name, LastName as surname FROM employee

UPDATE Commands
UPDATE employee SET LastName='Sinha'
WHERE EmpID = 1

DELETE Commands
DELETE FROM employee
WHERE EmpID = 4


ALTER Command
ALTER TABLE employee ADD column jobTitle varchar(50)
ALTER TABLE employee DROP column jobTitle
ALTER TABLE employee MODIFY column FirstName varchar(60)
ALTER TABLE employee DROP PRIMARY KEY
ALTER TABLE employee ADD PRIMARY KEY(EmpID)

Truncate Command
TRUNCATE TABLE employee


ORDER BY - to sort the data in an ascending order
No need to be a part of SELECT statements
SELECT FirstName FROM employee
ORDER BY Salary

SELECT FirstName FROM employee
ORDER BY Salary DESC

To limit the results
SELECT FirstName FROM employee
ORDER BY Salary LIMIT 3

Order Of Execution:
FROM -> WHERE -> SELECT -> ORDER BY -> LIMIT

CREATE TABLE Students(
SID INT auto_increment,
S_FirstName varchar(50) NOT NULL,
S_LastName varchar(50) NOT NULL,
S_Email varchar(50) NOT NULL,
S_Phone varchar(50) NOT NULL,
S_EnrollmentDate timestamp NOT NULL,
Selected_Course INT NOT NULL,
Years_Of_Exp int NOT NULL,
S_Company varchar(50) NOT NULL,
Source_of_joining varchar(50) NOT NULL,
Batch_Start_Date timestamp NOT NULL,
Location varchar(50) NOT NULL,
PRIMARY KEY(SID),
UNIQUE KEY(S_Email),
FOREIGN KEY(Selected_Course) REFERENCES Course(CourseID)
);


CREATE TABLE Course(
CourseID INT auto_increment,
CourseName varchar(50) NOT NULL,
Course_duration_months INT NOT NULL,
CourseFee INT Not NULL,
PRIMARY KEY(CourseID)
);

INSERT INTO Course(CourseName, Course_duration_months, CourseFee) VALUES ("DSA For Interview Preparation", 3, 4999);
INSERT INTO Course(CourseName, Course_duration_months, CourseFee) VALUES ("THE COMPLETE EXCEL MASTERY COURSE", 2, 1499);

INSERT INTO Students(S_FirstName,S_LastName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_of_joining,Location,Batch_Start_Date) VALUES ("Akash", "Mishra", "akash@gmail.com", '9998887776', '2024-01-21', 1, 4, "Amazon", "LinkedIn", "Bengaluru", '2024-02-29');
INSERT INTO Students(S_FirstName,S_LastName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_of_joining,Location,Batch_Start_Date) VALUES ("Aranya", "Kumari", "aranya@gmail.com", '9992887776', '2024-01-12', 1, 2, "EXL", "YouTube", "Noida", '2024-02-29');
INSERT INTO Students(S_FirstName,S_LastName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_of_joining,Location,Batch_Start_Date) VALUES ("Rashmi", "Tanwar", "rashmi@gmail.com", '8398887776', '2024-02-22', 2, 1, "SBI Bank", "Advertisement", "Rohtak", '2024-03-03');
INSERT INTO Students(S_FirstName,S_LastName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_of_joining,Location,Batch_Start_Date) VALUES ("Dheeraj", "Kumar", "dheeraj@gmail.com", '7298887776', '2024-01-15', 1, 6, "Paytm", "Others", "Bengaluru", '2024-02-29');
INSERT INTO Students(S_FirstName,S_LastName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_of_joining,Location,Batch_Start_Date) VALUES ("Divya", "Bhatt", "divya@gmail.com", '9998886776', '2024-01-12', 2, 3, "Thales", "LinkedIn", "Gurugram", '2024-03-03');
INSERT INTO Students(S_FirstName,S_LastName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_of_joining,Location,Batch_Start_Date) VALUES ("Devyansh", "Bhatia", "devyansh@gmail.com", '9998876776', '2024-01-12', 3, 3, "Thales", "LinkedIn", "Gurugram", '2024-03-03');


DELETE FROM Students
WHERE SID=6
====================================================================================================================================================================
Session 3: Aggregation and Grouping Functions

1. Count of total number of students enrolled in the website techforallwithpriya?
SELECT count(*) FROM Students

2. Count of number of distinct companies from which students have enrolled into the website techforallwithpriya?
SELECT count(DISTINCT S_Company) as num_of_companies FROM Students

3. Count of distinct source of joining the students who have enrolled into the website techforallwithpriya?
SELECT count(DISTINCT Source_of_Joining) as count_sources_joining FROM Students

4. Count of the students who have enrolled in the course in the month of February?
SELECT count(*) FROM Students WHERE S_EnrollmentDate LIKE '%-02-%'

5. Count of the number of students who joined the course via LinkedIn, YouTube, Advertisement and Other resources?
SELECT Source_of_joining, COUNT(*) FROM Students
GROUP BY Source_of_joining;

6. Grouping via the location as well as source of joining?
SELECT Location, Source_of_joining, COUNT(*) as total_count FROM Students
GROUP BY Location, Source_of_joining

7. How many students have enrolled in each course?
SELECT Selected_Course, COUNT(*) as students_count FROM Students
GROUP BY Selected_Course

8. Corresponding to each source of joining, what is the maximum years of experience any person holds?
SELECT Source_of_joining, MAX(Years_Of_Exp) as students_max_exp FROM Students
GROUP BY Source_of_joining

9. Corresponding to each source of joining, what is the summation of experience any person holds?
SELECT Source_of_joining, SUM(Years_Of_Exp) as students_sum_exp FROM Students
GROUP BY Source_of_joining

10. Corresponding to each source of joining, what is the average of experience any person holds?
SELECT Source_of_joining, AVG(Years_Of_Exp) as students_sum_exp FROM Students
GROUP BY Source_of_joining


Datatype: 
Decimal(3,1)

CREATE TABLE Course_Update(
CourseID INT auto_increment,
CourseName varchar(50) NOT NULL,
Course_duration_months DECIMAL(3,1) NOT NULL,
CourseFee INT Not NULL,
PRIMARY KEY(CourseID)
) auto_increment = 100;

Timestamp

CREATE TABLE Course_Update(
CourseID INT auto_increment,
CourseName varchar(50) NOT NULL,
Course_duration_months DECIMAL(3,1) NOT NULL,
CourseFee INT Not NULL,
Changed_AT TIMESTAMP DEFAULT NOW() ON UPDATE NOW(),
PRIMARY KEY(CourseID)
) auto_increment = 100;


Logical Operators:
1. Display the records of those students who are not from Bengaluru?
SELECT * FROM Students WHERE Location != 'Bengaluru'

2. Display the courses which doesnot include DSA?
SELECT * FROM Course_Update WHERE CourseName NOT LIKE '%DSA%'

3. Display the records of those students who joined via YouTube and have less than 5 years of experience and location is from Bengaluru?
SELECT * FROM Students WHERE Years_Of_Exp < 5 AND Source_of_Joining= 'YouTube' AND Location = 'Bengaluru'

4. Display the records of those students who are not having an experience between 1 to 3 years?
SELECT * FROM Students WHERE Years_Of_Exp NOT BETWEEN 1 and 3

5. Display the records of those students who joined via more than 1 source of joining?
WHERE - used to filter individual records before aggregation
HAVING - used to filter aggregate records after aggregation
SELECT Source_of_joining, COUNT(*) as Total FROM Students
GROUP BY Source_of_joining
HAVING Total > 1

6. Display the count of those students who joined via LinkedIn?
SELECT Source_of_joining, COUNT(*) as Total FROM Students
GROUP BY Source_of_joining
HAVING Source_of_joining = 'LinkedIn'

SELECT Source_of_joining, COUNT(*) as Total FROM Students
WHERE Source_of_joining = 'LinkedIn'
GROUP BY Source_of_joining
====================================================================================================================================================================
Session 4: Window Functions and Analytic Queries





















