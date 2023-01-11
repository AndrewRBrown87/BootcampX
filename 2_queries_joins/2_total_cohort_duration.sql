SELECT sum(assignment_submissions.duration)
FROM assignment_submissions
JOIN students
ON students.id = student_id
JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'FEB12';