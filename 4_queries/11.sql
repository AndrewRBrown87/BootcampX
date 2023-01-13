SELECT assignments.day, count(assignments.*), sum(assignments.duration)
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;