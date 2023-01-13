SELECT students.name AS student, avg(assignment_submissions.duration) AS average
from students JOIN assignment_submissions ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average DESC;