SELECT avg(assistance_requests.completed_at - assistance_requests.started_at) AS average
FROM assistance_requests;