CREATE TABLE Students (
    StudentID INTEGER PRIMARY KEY,
    StudentName TEXT NOT NULL,
    Major TEXT
);

CREATE TABLE Courses (
    CourseID INTEGER PRIMARY KEY,
    CourseName TEXT NOT NULL,
    Instructor TEXT
);

CREATE TABLE Enrollments (
    EnrollmentID INTEGER PRIMARY KEY,
    StudentID INTEGER,
    CourseID INTEGER,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Students (StudentID, StudentName, Major) VALUES
(1, 'Alice', 'Biology'),
(2, 'Bob', 'Chemistry'),
(3, 'Charlie', 'Physics');

INSERT INTO Courses (CourseID, CourseName, Instructor) VALUES
(101, 'Biology 101', 'Dr. Smith'),
(102, 'Chemistry 101', 'Dr. Brown'),
(103, 'Physics 101', 'Dr. Taylor');

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID) VALUES
(1, 1, 101),
(2, 2, 102),
(3, 3, 103),
(4, 1, 102),
(5, 3, 101);
