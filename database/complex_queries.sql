USE school_db;

-- JOin Query show std name, class name, subject n teacher
SELECT s.name AS student_name, c.class_name, t.subject, t.name, AS teacher_name
FROM students s
JOIN scores sc ON s.student_id = sc.student_id
JOIN classes c ON sc.class_id = c.class_id
JOIN teachers t ON c.teacher_id = t.teacher_id;

-- left join shw all stds{even without score}
SELECT s.name, sc.score FROM students s
LEFT JOIN scores sc ON s.student_id = sc.score_id;

-- . Subquery: Students who scored above the average
SELECT name FROM students s
WHERE student_id IN (
    SELECT student_id FROM scores
    WHERE score > (SELECT AVG(score) FROM scores)
);

-- Aggregation: Average score per class
SELECT c.class_name, AVG(sc.score) AS average_score
FROM scores sc
JOIN classes c ON sc.class_id = c.class_id
GROUP BY c.class_name;

--  Window Function: Rank students by score
SELECT s.name, sc.score,
RANK() OVER(ORDER BY sc.score DESC) AS rank_position
FROM students s
JOIN scores sc ON s.student_id = sc.student_id;