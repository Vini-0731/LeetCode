# Write your MySQL query statement below
# Write your MySQL query statement below
SELECT s1.student_id,s1.student_name,s2.subject_name,IFNULL(count(e1.subject_name),0) AS attended_exams FROM students s1
CROSS JOIN subjects s2
LEFT JOIN examinations e1
ON s1.student_id=e1.student_id AND e1.subject_name=s2.subject_name
GROUP BY s1.student_id,s2.subject_name,s1.student_name
ORDER BY s1.student_id,s2.subject_name
