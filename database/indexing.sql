USE school_db;

-- Create indexes for performance
CREATE INDEX idx_student_name ON students(name);
CREATE INDEX idx_teacher_id ON classes(teacher_id);
CREATE INDEX idx_student_id ON scores(student_id);


-- Check how the database uses indexes
EXPLAIN SELECT s.name, sc.score
FROM students s
JOIN scores sc ON s.student_id = sc.student_id;