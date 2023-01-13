SELECT cohorts.name AS cohort_name, count(students.cohort_id)
FROM cohorts JOIN students ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.cohort_id) >= 18
ORDER BY count(students.cohort_id);