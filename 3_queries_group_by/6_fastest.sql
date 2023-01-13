SELECT students.name AS student, avg(assignment_submissions.duration) AS average, avg(assignments.duration) AS estimate
from students JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE students.end_date IS NULL
GROUP BY student 
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average;