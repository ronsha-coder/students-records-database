# students-records-database
A MySQL database project for managing student records, including students, courses, enrollments, and grades.

# Student Records Management System

## Description
This project is a SQL-based database system for managing student records. It includes tables for storing information about students, courses, enrollments, and grades. The system supports many-to-many relationships (students enrolled in multiple courses) and one-to-one relationships (grades assigned per enrollment).

## Features
- Stores student personal and academic information
- Manages course offerings
- Tracks student enrollments in courses
- Records grades for each student in each course

## How to Run / Setup
1. Install MySQL on your computer.
2. Download the `student_records.sql` file from this repository.
3. Open your MySQL interface (like MySQL Workbench or CLI).
4. Create the database and run the SQL script:
   ```sql
   SOURCE path_to_your_file/student_records.sql;

   ERD (Entity-Relationship Diagram)

This diagram shows the structure and relationships between tables in the database.




---

File Structure

student-records-database/
│
├── student_records.sql        # SQL file with all CREATE TABLE statements
├── student_records_erd.png    # Entity-Relationship Diagram
└── README.md                  # Project description and setup instructions

Author

ronsha-coder 
