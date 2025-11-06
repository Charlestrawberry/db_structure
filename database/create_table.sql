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
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id), 
);

CREATE TABLE scores (
    score_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    class_id INT,
    score INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
);

-- Insert sample classes
INSERT INTO classes (class_name, teacher_id) VALUES
('JSS1', 1),
('JSS2', 2),
('JSS3', 3);

INSERT INTO scores (student_id, class_id, score) VALUES
(1, 1, 85), (2, 1, 78), (3, 1, 92),
(4, 2, 88), (5, 2, 73), (6, 2, 95),
(7, 3, 90), (8, 3, 64), (9, 3, 81),
(10, 3, 99), (1, 2, 67), (3, 2, 80),
(2, 3, 74), (4, 1, 88), (5, 1, 76);