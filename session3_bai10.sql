CREATE DATABASE CompanyDB;

CREATE SCHEMA company;

CREATE TABLE company.Employees (
	emp_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	dob DATE NOT NULL,
	department_id INT
);

CREATE TABLE company.Departments (
	department_id SERIAL PRIMARY KEY,
	department_name VARCHAR(100) NOT NULL
);

CREATE TABLE company.Projects (
	project_id SERIAL PRIMARY KEY,
	project_name VARCHAR(150) NOT NULL,
	start_date DATE NOT NULL,
	end_date DATE NOT NULL
);

CREATE TABLE company.EmployeeProjects (
	emp_project_id SERIAL PRIMARY KEY,
	emp_id INT,
	project_id INT
);

ALTER TABLE company.Employees
ADD CONSTRAINT foreign_key_employees_departments FOREIGN KEY (department_id) REFERENCES company.Departments (department_id);

ALTER TABLE company.Projects
ADD CONSTRAINT check_project_dates CHECK (end_date >= start_date);

ALTER TABLE company.EmployeeProjects
ADD CONSTRAINT foreign_key_empprojects_employees FOREIGN KEY (emp_id) REFERENCES company.Employees (emp_id);

ALTER TABLE company.EmployeeProjects
ADD CONSTRAINT foreign_key_empprojects_projects FOREIGN KEY (project_id) REFERENCES company.Projects (project_id);