
create view view_salary_more1000 as 
select w.worker_ID,w.first_name +' '+w.last_name as 'full name',wt.work_type,s.salary_per_day
from workers w
join worker_type wt
on w.worker_type_ID=wt.ID
join salary s
on w.salary_ID=s.ID
where s.salary_per_day>=1000