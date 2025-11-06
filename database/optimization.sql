USE school_db;

-- Original slow subquery (nested)
SELECT name
FROM students
WHERE student_id IN (
  SELECT student_id FROM scores
  WHERE score > (SELECT AVG(score) FROM scores)
);

-- Optimized version using JOIN and a derived table
SELECT s.name
FROM students s
JOIN (
  SELECT student_id FROM scores
  WHERE score > (SELECT AVG(score) FROM scores)
) AS high_scores
ON s.student_id = high_scores.student_id;