-- platform: Leetcode
# Write your MySQL query statement below
with studentsSubjectsCrossed as 
(
select st.student_id, st.student_name, s.subject_name
from Students st, Subjects s
group by 1,2,3
)
select a.student_id, a.student_name, a.subject_name, count(b.student_id) as attended_exams
from studentsSubjectsCrossed a
left join Examinations b 
on a.student_id = b.student_id
and a.subject_name = b.subject_name
group by 1,2,3
order by a.student_id
