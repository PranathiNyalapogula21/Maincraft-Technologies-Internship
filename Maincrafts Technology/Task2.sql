-- SCHEMA

USE StudentManagement;


-- Create Courses Table

CREATE TABLE courses(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);


-- Create Enrollments Table

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    grade INT,
    FOREIGN KEY (student_id)
    REFERENCES Students(StudentID),
    FOREIGN KEY (course_id)
    REFERENCES courses(id)
);


-- Insert Courses

INSERT INTO courses (id, name)
VALUES
(1, 'Python'),
(2, 'SQL'),
(3, 'Machine Learning'),
(4, 'Data Science');


-- Insert Enrollment Records

INSERT INTO enrollments
(student_id, course_id, grade)
VALUES
(1, 1, 85),
(2, 2, 76),
(3, 3, 92),
(4, 4, 89),
(5, 1, 35),
(6, 2, 80),
(7, 3, 74),
(8, 4, 90),
(9, 1, 38),
(10, 2, 82);

-- QUERIES
-- QUERY 1 - List All Students Enrolled in Each Course 

SELECT
s.Name AS StudentName,
c.name AS CourseName
FROM enrollments e
JOIN Students s
ON e.student_id = s.StudentID
JOIN courses c
ON e.course_id = c.id;


-- QUERY 2 - Find Average Grade Per Course

SELECT
c.name AS CourseName,
AVG(e.grade) AS AverageGrade
FROM enrollments e
JOIN courses c
ON e.course_id = c.id
GROUP BY c.name;


-- QUERY 3 - Find Top 3 Students Overall

SELECT
s.Name,
AVG(e.grade) AS AverageGrade
FROM enrollments e
JOIN Students s
ON e.student_id = s.StudentID
GROUP BY s.Name
ORDER BY AverageGrade DESC
LIMIT 3;


-- QUERY 4 - Count Students who failed (grade < 40)

SELECT
COUNT(*) AS FailedStudents
FROM enrollments
WHERE grade < 40;




/* Report

TASK 2 REPORT

Objective:
To extend the Student Management database using Courses and Enrollments tables and perform SQL joins and aggregations.

Tasks Performed:
- Created courses table
- Created enrollments table
- Inserted course and enrollment data
- Performed JOIN queries
- Calculated average grades
- Identified top students
- Counted failed students

Result:
All queries executed successfully and relationships between tables were established correctly.   */