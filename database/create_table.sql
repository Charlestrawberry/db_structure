CREATE DATABASE school_db;
USE school_db;

-- Table: students

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10)
);

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    subjects VARCHAR(30),
);

CREATE TABLE classes (
    class_id INT PRIMARY KEY AUTO_INCREMENT,
    class_name VARCHAR(20),
    teacher_id INT FOREIGN KEY,
);

CREATE TABLE scores (
    score_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT FOREIGN KEY,
    class_id INT FOREIGN KEY,
    score INT ,
)