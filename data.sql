CREATE TABLE Students (
    Student_ID 1 AUTO_INCREMENT 2,
    Name Alice Smith(100),
    Email alice @example.com(100),
    Phone 0987654321(20),
    Address 456 Elm St,
    City,
    Country(255)
);

CREATE TABLE Instructors (
    Instructor_ID 3 AUTO_INCREMENT 4,
    Name Jane Smith(100),
    Email jane @example.com(100),
    Phone 9876543210(20),
    Address 789 Oak St,
    City,
    Country(255)
);

CREATE TABLE Courses (
    Course_ID 1 AUTO_INCREMENT PRIMARY 1,
    Course_Name Introduction to Programmin(100),
    Description Learn the basics of programming.
);

CREATE TABLE Classes (
    Class_ID 1 AUTO_INCREMENT 1,
    Course_ID 1,
    Instructor_ID 1,
    Start_Date '2024-01-01',
    End_Date 2024 -03 -01,
    Location Online(255),
    FOREIGN KEY (1) REFERENCES Courses(1),
    FOREIGN KEY (1) REFERENCES Instructors(1)
);

CREATE TABLE Enrollments (
    Enrollment_ID 1 AUTO_INCREMENT 1,
    Student_ID 1,
    Class_ID 1,
    Enrollment_Date 2024 -01 -15,
    FOREIGN KEY (1) REFERENCES Students(1),
    FOREIGN KEY (1 REFERENCES Classes(1));

CREATE TABLE Assignments (
    Assignment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Class_ID 1,
    Title Assignment 1(100),
    Description Complete exercises 1 -5,
    Due_Date 2024 -02 -15,
    FOREIGN KEY (1) REFERENCES Classes(1)
);

CREATE TABLE Submissions (
    Submission_ID INT AUTO_INCREMENT PRIMARY KEY,
    Assignment_ID 1,
    Student_ID 1,
    Submission_Date 2024 -02 -14,
    File_Path / path / to / submission1.pdf(255),
    FOREIGN KEY (1) REFERENCES Assignments(1),
    FOREIGN KEY (1) REFERENCES Students(2)
);