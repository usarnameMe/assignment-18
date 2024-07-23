SELECT Students.StudentName, Courses.CourseName
FROM Enrollments
INNER JOIN Students ON Enrollments.StudentID = Students.StudentID
INNER JOIN Courses ON Enrollments.CourseID = Courses.CourseID;

SELECT Students.StudentName, Courses.CourseName
FROM Students
LEFT JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
LEFT JOIN Courses ON Enrollments.CourseID = Courses.CourseID;

SELECT Students.StudentName, Courses.CourseName
FROM Courses
LEFT JOIN Enrollments ON Courses.CourseID = Enrollments.CourseID
LEFT JOIN Students ON Enrollments.StudentID = Students.StudentID;

SELECT Students.StudentName, Courses.CourseName
FROM Students
LEFT JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
LEFT JOIN Courses ON Enrollments.CourseID = Courses.CourseID
UNION
SELECT Students.StudentName, Courses.CourseName
FROM Courses
LEFT JOIN Enrollments ON Courses.CourseID = Enrollments.CourseID
LEFT JOIN Students ON Enrollments.StudentID = Students.StudentID
WHERE Students.StudentID IS NULL;
