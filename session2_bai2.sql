CREATE DATABASE UniversityDB;

CREATE SCHEMA university;

CREATE TABLE university.Students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birth_day DATE,
	email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE university.Courses(
	course_id SERIAL PRIMARY KEY,
	course_name VARCHAR(100) NOT NULL,
	credits INT
);

CREATE TABLE university.Enrollments(
	enrollment_id SERIAL PRIMARY KEY,
	student_id INT REFERENCES university.Students(student_id),
	course_id INT REFERENCES university.Courses(course_id),
	enroll_date DATE DEFAULT CURRENT_DATE
);

ALTER TABLE university.Students
ADD CONSTRAINT check_birth_date
CHECK (EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM birth_date) >= 18);

DROP TABLE university.Enrollments;

DROP TABLE university.Courses;

DROP TABLE university.Students;
