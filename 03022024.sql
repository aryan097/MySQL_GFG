show databases
CREATE DATABASE IF NOT EXISTS TECHFORALLWITHPRIYA

USE TECHFORALLWITHPRIYA

SELECT TECHFORALLWITHPRIYA()

CREATE TABLE employee
(
	EmpID		INT		PRIMARY KEY,
	FirstName	varchar(50) NOT NULL,
    LastName	varchar(50) NOT NULL,
    Age			INT NOT NULL,
    Salary		INT NOT NULL,
    Location	varchar(50) DEFAULT "BENGALURU" NOT NULL
);

SHOW TABLES;

desc employee;

-- Inserting 6 different records with Indian names and cities

INSERT INTO employee VALUES ("Priya", "Bhatia", 28, 28000, "Delhi");
INSERT INTO employee VALUES ("Sneha", "Reddy", 24, 42000, "Hyderabad");
INSERT INTO employee VALUES ("Rahul", "Chatterjee", 26, 18000, "Kolkata");
INSERT INTO employee VALUES ("Aryan", "Rajput", 29, 55000, "Mumbai");
INSERT INTO employee VALUES ("Ananya","Joshi", 23, 32000, "Pune");
INSERT INTO employee VALUES ("Rajat", "Mishra", 30, 48000, "Lucknow");

INSERT INTO employee(FirstName, LastName, Age, Salary) VALUES ("Bhola", "Kumar", 29, 22423);


SELECT * FROM employee;

DROP TABLE employee;

CREATE TABLE employee
(
	EmpID		INT	AUTO_INCREMENT, --
	FirstName	varchar(50)	NOT NULL,
	-- MiddleName	varchar(50),
	LastName	varchar(50)	NOT NULL,
	Age			INT	NOT NULL,
	Salary		INT	NOT NULL,
	Location	varchar(50)	DEFAULT "Bengaluru" NOT NULL,
	PRIMARY KEY(EmpID)
)

drop database TECHFORALLWITHPRIYA;

show tables
INSERT INTO employee VALUES ("Priya", "Bhatia", 28, 28000 );
INSERT INTO employee VALUES ("Sneha", "Reddy", 24, 42000);
INSERT INTO employee VALUES ("Rahul", "Chatterjee", 26, 18000);
INSERT INTO employee VALUES ("Aryan", "Rajput", 29, 55000);
INSERT INTO employee VALUES ("Ananya","Joshi", 23, 32000);
INSERT INTO employee VALUES ("Rajat", "Mishra", 30, 48000);

INSERT INTO employee(FirstName, LastName, Age, Salary) VALUES ("Priya", "Bhatia", 28, 28000);
INSERT INTO employee(FirstName, LastName, Age, Salary) VALUES ("Sneha", "Reddy", 24, 42000);
INSERT INTO employee(FirstName, LastName, Age, Salary) VALUES ("Rahul", "Chatterjee", 26, 18000);
INSERT INTO employee(FirstName, LastName, Age, Salary) VALUES ("Aryan", "Rajput", 29, 55000);
INSERT INTO employee(FirstName, LastName, Age, Salary) VALUES ("Ananya","Joshi", 23, 32000);
INSERT INTO employee(FirstName, LastName, Age, Salary) VALUES ("Rajat", "Mishra", 30, 48000);


SELECT		FirstName,
			LastName
-- 			Salary
FROM		EMPLOYEE
WHERE 		BINARY Salary > 22423 
			AND FirstName LIKE "A%"
ORDER BY 	Salary DESC
LIMIT 		3;

UPDATE EMPLOYEE SET SALARY = 320000
WHERE EmpID =5;


UPDATE EMPLOYEE SET AGE = 81
WHERE EmpID =1 ;

truncate table employee -- delete everything, permanent, drops completely "Permanently Delete"
where EmpID = 7;

-- Delete stores in cache, can recover. Obviosly it won't show "recycle bin"

SELECT * FROM EMPLOYEE

ALTER TABLE EMPLOYEE MODIFY COLUMN LOCATION VARCHAR(20)
DESC EMPLOYEE;

ALTER TABLE EMPLOYEE DROP column EmpPosition --  varchar(50)


ALTER TABLE EMPLOYEE ADD COLUMN EmpPosition VARCHAR(50) NOT NULL



CREATE TABLE Courses
(
	Course_ID		INT	AUTO_INCREMENT,
	Course_Name	varchar(50)	NOT NULL,
    Course_Duration_Month INT NOT NULL,
    Course_Fee INT NOT NULL,
    PRIMARY KEY(Course_ID)
)

DESC Courses;

CREATE TABLE Students
(
	SID		INT	AUTO_INCREMENT,
	S_FName	varchar(50)	NOT NULL,
    S_LName	varchar(50)	NOT NULL,
    S_Email	varchar(50)	NOT NULL,
    S_Phone	VARCHAR(10)	NOT NULL,
    S_EnrollmentDate TIMESTAMP NOT NULL,
    Selected_Course INT NOT NULL,
    Years_Of_Exp INT NOT NULL,
    S_Company VARCHAR(50) NOT NULL,
    Source_Of_Joining VARCHAR(50) NOT NULL,
    Location VARCHAR(50) NOT NULL,
    Batch_StartDate TIMESTAMP NOT NULL,
    PRIMARY KEY(SID),
    UNIQUE KEY(S_Email),
    FOREIGN KEY(Selected_Course) references COURSE_UPDATE(COURSEID)
);

DESC Students;
DROP Table Students;

INSERT INTO Courses(Course_Name, Course_Duration_Month, Course_Fee) VALUES ("DSA For Interview Preparation", 3, 4999);
INSERT INTO Courses(Course_Name, Course_Duration_Month, Course_Fee) VALUES ("Excel Complete Mastery Course", 2, 1499);

SELECT * FROM COURSES;
DROP TABLE Courses;

INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Akash",	"Mishra",	"akash@gmail.com", 	'9998887776', '2024-01-21', 1, 4, "Amazon",	"LinkedIn",	"Bengaluru",	'2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Suraj",	"Kumar",	"suraj@gmail.com", 	'9998887775', '2024-01-26', 1, 5, "Google",	"Youtube",	"Hyderabad",	'2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("John",	"Hansen",	"john@gmail.com", 	'9998887774', '2024-01-23', 1, 2, "Tesla", 	"Ad",		"London",		'2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Aman",	"Rathore",	"aman@gmail.com", 	'9998887773', '2024-01-20', 1, 1, "Ford", 	"Facebook",	"Jaipur", 		'2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Pankaj",	"Udas",		"pankaj@gmail.com",	'9998887772', '2024-01-04', 1, 6, "Wipro",	"Instagram","Chennai", 		'2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Ali",		"Ahmed",	"ali@gmail.com",	'9998887771', '2024-01-18', 1, 3, "Infosys","Google", 	"Lahore", 		'2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Akash",	"Roberts",	"akash2@gmail.com",	'9998887766', '2024-01-21', 2, 9, "Amazon",	"LinkedIn",	"Bengaluru", 	'2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Suraj",	"Kumar",	"suraj2@gmail.com",	'9998887755', '2024-01-26', 2, 8, "Google",	"Youtube", 	"Hyderabad", 	'2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("John",	"Hansen",	"john2@gmail.com",	'9998887744', '2024-01-23', 2, 5, "Tesla", 	"Ad", 		"London", 		'2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Aman",	"Rathore",	"aman2@gmail.com",	'9998887733', '2024-01-20', 2, 3, "Ford", 	"Facebook", "Jaipur", 		'2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Pankaj",	"Udas",		"pankaj2@gmail.com",'9998887722', '2024-01-04', 2, 5, "Wipro", 	"Instagram","Chennai", 		'2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Ali",		"Ahmed",	"ali2@gmail.com",	'9998887711', '2024-01-18', 2, 4, "Infosys","Google", 	"Lahore", 		'2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Emily", "Rodriguez", "user1@example.com", '9000000000', '2023-04-12', 2, 4, "Koch Inc", "Google", "Lahore", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Emily", "Liu", "user2@example.com", '9000000001', '2023-07-15', 1, 6, "Thompson-Barnes", "Instagram", "Hyderabad", '2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Karen", "Ortiz", "user3@example.com", '9000000002', '2023-07-16', 3, 5, "Ortega, Byrd and Jackson", "Google", "London", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Samantha", "Rojas", "user4@example.com", '9000000003', '2024-01-08', 3, 3, "Kaufman-Williams", "Ad", "Lahore", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Bryan", "Mercado", "user5@example.com", '9000000004', '2023-12-01', 3, 6, "Taylor-Curry", "Google", "London", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Thomas", "Snyder", "user6@example.com", '9000000005', '2023-12-28', 2, 1, "Johnson, Dudley and Gonzalez", "Google", "Hyderabad", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Patrick", "Phelps", "user7@example.com", '9000000006', '2023-04-23', 1, 1, "Baker-Peters", "Youtube", "Lahore", '2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Victoria", "Landry", "user8@example.com", '9000000007', '2023-10-07', 2, 9, "Alvarez Inc", "Google", "London", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Erin", "Rivera", "user9@example.com", '9000000008', '2024-01-12', 2, 3, "Cannon-Sanders", "Youtube", "Lahore", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Mark", "Rice", "user10@example.com", '9000000009', '2023-08-17', 2, 8, "Chavez, Brandt and Glenn", "Ad", "London", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Robert", "Mccoy", "user11@example.com", '9000000010', '2023-02-19', 3, 7, "Anthony LLC", "Ad", "Bengaluru", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Sandra", "Turner", "user12@example.com", '9000000011', '2024-02-08', 1, 10, "Barber-Ford", "LinkedIn", "London", '2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Vanessa", "Peterson", "user13@example.com", '9000000012', '2023-11-24', 2, 5, "Schmidt Inc", "Instagram", "Jaipur", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Matthew", "Fox", "user14@example.com", '9000000013', '2024-01-30', 3, 3, "Mcgrath-Gray", "Instagram", "Jaipur", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Tyler", "Lee", "user15@example.com", '9000000014', '2023-08-18', 1, 1, "Winters, Lester and Love", "LinkedIn", "Bengaluru", '2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Christopher", "Bradshaw", "user16@example.com", '9000000015', '2023-07-10', 3, 4, "Washington Inc", "LinkedIn", "Jaipur", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Kevin", "Banks", "user17@example.com", '9000000016', '2023-07-09', 2, 6, "Reynolds, Stein and Yu", "LinkedIn", "London", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Vincent", "Foster", "user18@example.com", '9000000017', '2023-05-24', 1, 10, "Bell, Wilson and Anderson", "Google", "London", '2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Mandy", "Cabrera", "user19@example.com", '9000000018', '2023-03-06', 2, 9, "Patterson, Richardson and Wu", "Instagram", "Lahore", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Travis", "Mcgrath", "user20@example.com", '9000000019', '2023-06-21', 3, 3, "Patel LLC", "Youtube", "London", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Susan", "Ortiz", "user21@example.com", '9000000020', '2024-01-06', 2, 8, "Watson, Hicks and Preston", "LinkedIn", "Jaipur", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Courtney", "Grant", "user22@example.com", '9000000021', '2024-01-03', 2, 7, "Huff Ltd", "Instagram", "London", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Andrew", "Bennett", "user23@example.com", '9000000022', '2023-06-24', 2, 3, "Alexander, Smith and Chan", "Ad", "London", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Thomas", "Coleman", "user24@example.com", '9000000023', '2023-03-01', 3, 9, "Conner, Flowers and Brown", "Youtube", "Bengaluru", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Laura", "Herman", "user25@example.com", '9000000024', '2023-06-12', 2, 4, "Macias-Turner", "Google", "Jaipur", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Haley", "Reynolds", "user26@example.com", '9000000025', '2023-11-04', 3, 3, "Sutton-Burke", "LinkedIn", "Chennai", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Christopher", "Lewis", "user27@example.com", '9000000026', '2023-05-07', 2, 10, "Freeman, Clay and Alvarez", "Facebook", "Jaipur", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Christopher", "Cooper", "user28@example.com", '9000000027', '2023-02-26', 3, 1, "Hernandez-Matthews", "Facebook", "London", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Jacob", "Hicks", "user29@example.com", '9000000028', '2023-06-12', 2, 5, "Barton Group", "Google", "Hyderabad", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Alexander", "Richards", "user30@example.com", '9000000029', '2023-04-02', 3, 3, "Ochoa-Juarez", "LinkedIn", "Lahore", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Sarah", "Richards", "user31@example.com", '9000000030', '2023-11-05', 2, 8, "Jackson-Burnett", "Youtube", "Hyderabad", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Caroline", "Norton", "user32@example.com", '9000000031', '2024-01-30', 2, 2, "Edwards, King and Park", "Youtube", "London", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Curtis", "Perez", "user33@example.com", '9000000032', '2023-06-25', 1, 3, "Lawson, Thompson and Murphy", "LinkedIn", "London", '2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Debbie", "Price", "user34@example.com", '9000000033', '2023-09-10', 2, 6, "Wong Ltd", "Google", "Lahore", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Cole", "Romero", "user35@example.com", '9000000034', '2024-01-29', 3, 1, "Carpenter, Adams and Thomas", "Youtube", "Jaipur", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Mark", "Miller", "user36@example.com", '9000000035', '2023-08-31', 1, 4, "Obrien-Lee", "LinkedIn", "Chennai", '2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Richard", "Green", "user37@example.com", '9000000036', '2023-07-16', 1, 2, "Glenn LLC", "Youtube", "London", '2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Samuel", "Hubbard", "user38@example.com", '9000000037', '2023-10-08', 3, 1, "Holmes-Gallagher", "Youtube", "London", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Destiny", "Freeman", "user39@example.com", '9000000038', '2023-05-10', 3, 4, "Howard-Ward", "LinkedIn", "Jaipur", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("George", "Barker", "user40@example.com", '9000000039', '2023-09-17', 3, 1, "King and Sons", "Instagram", "Chennai", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Jonathan", "Perez", "user41@example.com", '9000000040', '2023-03-06', 1, 6, "Brown, Rodriguez and Blake", "Instagram", "Hyderabad", '2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Pamela", "Smith", "user42@example.com", '9000000041', '2023-10-08', 2, 7, "Smith and Sons", "Youtube", "Jaipur", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Kristen", "Cantu", "user43@example.com", '9000000042', '2023-02-15', 2, 2, "White-Torres", "Facebook", "Lahore", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Ricky", "George", "user44@example.com", '9000000043', '2023-06-02', 1, 3, "Pratt-Jimenez", "Ad", "Chennai", '2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Jesse", "Walters", "user45@example.com", '9000000044', '2023-09-18', 3, 8, "Lopez Inc", "Google", "Jaipur", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Julie", "Dominguez", "user46@example.com", '9000000045', '2023-10-06', 2, 6, "Lewis Ltd", "LinkedIn", "London", '2024-03-03');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Mark", "Knapp", "user47@example.com", '9000000046', '2023-06-09', 3, 2, "Hall Ltd", "Google", "London", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Sandy", "Wallace", "user48@example.com", '9000000047', '2023-09-14', 3, 2, "Riley and Sons", "Google", "Bengaluru", '2024-04-01');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Melissa", "Haley", "user49@example.com", '9000000048', '2023-04-27', 1, 2, "Jenkins-Spencer", "Instagram", "Chennai", '2024-02-29');
INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Morgan", "Price", "user50@example.com", '9000000049', '2023-11-22', 1, 2, "Jackson LLC", "LinkedIn", "Jaipur", '2024-02-29');

INSERT INTO Students(S_FName,S_LName,S_Email,S_Phone,S_EnrollmentDate,Selected_Course,Years_Of_Exp,S_Company,Source_Of_Joining,Location,Batch_StartDate) VALUES ("Ali",		"Jinnah",	"ali3@gmail.com",	'9998887701', '2024-01-18', 3, 4, "Infosys","Google", 	"Lahore", 		'2024-03-03');

DELETE FROM Students
Where SID = 14;

DESC Students;
DROP table STUDENTS;
SELECT * FROM STUDENTS;
SELECT * FROM Courses;
DESC Courses;

show tables;