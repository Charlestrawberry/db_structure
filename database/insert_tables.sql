USE school_db;

-- Insert sample students
INSERT INTO students (name, age, gender) VALUES
('Alice', 13, 'female')
('Brian', 14, 'Male'),
('Chika', 13, 'Female'),
('David', 14, 'Male'),
('Ella', 13, 'Female'),
('Femi', 14, 'Male'),
('Grace', 13, 'Female'),
('Hassan', 15, 'Male'),
('Ife', 14, 'Female'),
('James', 15, 'Male');

INSERT INTO teachers (name, subjects) VALUES
('Mr. Ade', 'Mathematics'),
('Mrs. Okoro', 'English'),
('Mr. Musa', 'Science');


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