CREATE DATABASE studentmanagement;

USE studentmanagement;


CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Gender CHAR(1),
    Age INT,
    Grade VARCHAR(2),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);


INSERT INTO Students
(Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES
('Rahul', 'M', 18, 'A', 85, 78, 90),
('Sneha', 'F', 19, 'B', 76, 88, 84),
('Arjun', 'M', 17, 'A', 92, 81, 79),
('Priya', 'F', 18, 'A', 89, 95, 91),
('Kiran', 'M', 20, 'C', 65, 70, 72),
('Anjali', 'F', 19, 'B', 80, 86, 88),
('Vikram', 'M', 18, 'B', 74, 69, 77),
('Divya', 'F', 17, 'A', 90, 93, 94),
('Rohit', 'M', 21, 'C', 60, 65, 68),
('Meena', 'F', 18, 'B', 82, 79, 85);

-- query 1 Show All Student Details

SELECT * FROM Students;

-- query 2 Average Score in Each Subject

SELECT
AVG(MathScore) AS AverageMath,
AVG(ScienceScore) AS AverageScience,
AVG(EnglishScore) AS AverageEnglish
FROM Students;


-- query 3 Top Performer(highest total score)

SELECT
Name,
(MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;


-- query 4 Count Students Per Grade

SELECT
Grade,
COUNT(*) AS TotalStudents
FROM Students
GROUP BY Grade;


-- query 5 Average Score by Gender

SELECT
Gender,
AVG(MathScore) AS AvgMath,
AVG(ScienceScore) AS AvgScience,
AVG(EnglishScore) AS AvgEnglish
FROM Students
GROUP BY Gender;


-- query 6 Students with Math Score > 80

SELECT *
FROM Students
WHERE MathScore > 80;


-- query 7 Update Student Grade

UPDATE Students
SET Grade = 'A'
WHERE Name = 'Kiran';
-- to show wheather update is done
SELECT * FROM Students;




/*
Report Summary:
--STUDENT MANAGEMENT SYSTEM REPORT

Objective:
To create a Student Management database using SQL and perform various queries for data analysis.

1. Show All Student Details
Query Used:

SELECT * FROM Students;

Explanation:
This query displays all records and complete details of students present in the Students table.

--------------------------------------------------

2. Average Score in Each Subject
Query Used:

SELECT AVG(MathScore), AVG(ScienceScore), AVG(EnglishScore)
FROM Students;

Explanation:
This query calculates the average marks of students in Math, Science, and English subjects.

--------------------------------------------------

3. Top Performer
Query Used:

SELECT Name,
(MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

Explanation:
This query finds the student with the highest total marks among all students.

--------------------------------------------------

4. Count Students Per Grade
Query Used:

SELECT Grade, COUNT(*)
FROM Students
GROUP BY Grade;

Explanation:
This query counts how many students belong to each grade category.

--------------------------------------------------

5. Average Score by Gender
Query Used:

SELECT Gender,
AVG(MathScore),
AVG(ScienceScore),
AVG(EnglishScore)
FROM Students
GROUP BY Gender;

Explanation:
This query compares the average subject scores between male and female students.

--------------------------------------------------

6. Students with Math Score Greater Than 80
Query Used:

SELECT * FROM Students
WHERE MathScore > 80;

Explanation:
This query displays students who scored more than 80 marks in Mathematics.

--------------------------------------------------

7. Update Student Grade
Query Used:

UPDATE Students
SET Grade = 'A'
WHERE Name = 'Kiran';

Explanation:
This query updates the grade of student Kiran to Grade A.

--------------------------------------------------

Result:
The Student Management database was successfully created, records were inserted, and all SQL queries executed correctly.

/* End of Report */ 