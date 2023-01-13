SELECT day, count(name) AS total_assignments
FROM assignments
GROUP BY day
ORDER BY day;