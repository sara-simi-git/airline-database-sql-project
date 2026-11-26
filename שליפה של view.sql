--שאילה ששולפת 
--מ view
--עובדים למשכורות את ממוצע המשכורת של כל סוג עבודה
--(רק של עובדים עם משכורת מעל 1000)
--ומעגלת את הממוצע כלפי מטה
select work_type,FLOOR(AVG(salary_per_day)) as 'salary avarage'
from view_salary_more1000
group by work_type
