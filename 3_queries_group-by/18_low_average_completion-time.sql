SELECT students.name AS student, 
  AVG(assignment_submissions.duration) AS average_assignment_duration, 
  AVG(assignments.duration) AS average_estimated_duration
FROM students
WHERE students.end_date IS NULL
JOIN assignment_submissions on assignment_submissions.id = assignment_id
JOIN assignments on assignments.id = assignments_id
GROUP BY student