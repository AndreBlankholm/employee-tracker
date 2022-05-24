DROP DATABASE IF EXISTS employeeTracker_db;

CREATE DATABASE employeeTracker_db;

USE DATABASE employeeTracker_db;

CREATE TABLE departments (
id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
title VARCHAR(30) NOT NULL,
salary DECIMAL NOT NULL,
department_id INTEGER
CONSTRAINT fk_departments FOREIGN KEY (department_id) REFERENCES departments(id) 
);

CREATE TABLE employees (
id INTEGER AUTO_INCREMENT NOT NULL PRIMARY KEY,
first_name VARCHAR(30) not null,
last_name VARCHAR(30) not null,
role_id INTEGER,
manager_id INTEGER,
CONSTRAINT fk_roles FOREIGN KEY (role_id) REFERENCES roles(id)
);