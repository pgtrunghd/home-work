CREATE DATABASE SchoolDB;

CREATE SCHEMA school;

CREATE TABLE school.Students (
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	dob DATE NOT NULL
);

CREATE TABLE school.Courses (
	course_id SERIAL PRIMARY KEY,
	course_name VARCHAR(150) NOT NULL,
	credits INT NOT NULL
);

CREATE TABLE school.Enrollments (
	enrollment_id SERIAL PRIMARY KEY,
	student_id INT,
	course_id INT,
	grade CHAR(1)
);

ALTER TABLE school.Enrollments
ADD CONSTRAINT foreign_key_student FOREIGN KEY (student_id) REFERENCES school.Students (student_id);

ALTER TABLE school.Enrollments
ADD CONSTRAINT foreign_key_course FOREIGN KEY (course_id) REFERENCES school.Courses (course_id);

ALTER TABLE school.Enrollments
ADD CONSTRAINT check_grade CHECK (grade IN ('A', 'B', 'C', 'D', 'F'));