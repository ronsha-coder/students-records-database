-- Create the database
CREATE DATABASE IF NOT EXISTS student_records;
USE student_records;

-- Students table
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(20),
    birthdate DATE,
    enrollment_date DATE NOT NULL
);

-- Courses table
CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_code VARCHAR(20) NOT NULL UNIQUE,
    description TEXT,
    credits INT NOT NULL
);

-- Enrollments table (Many-to-Many between Students and Courses)
CREATE TABLE Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id) ON DELETE CASCADE,
    UNIQUE(student_id, course_id)
);

-- Grades table
CREATE TABLE Grades (
    grade_id INT AUTO_INCREMENT PRIMARY KEY,
    enrollment_id INT NOT NULL,
    grade VARCHAR(2),
    FOREIGN KEY (enrollment_id) REFERENCES Enrollments(enrollment_id) ON DELETE CASCADE
);
