
--ôøåöãåøä ùî÷áìú îñôø èéñä åëîåú ğåñòéí åùåìôú
--ëì ñåëï ğñéòåú ùäáéà àú äëîåú ğåñòéí äæàú áèéñä ùğùìçä
create procedure sum_pasengers @fly_num int,@num int
as
begin
select sochen_ID,worker.first_name,worker.last_name,COUNT(*) as 'sum pasenger'
from pasengers_flies
join 
(select ID,worker_ID,first_name,last_name
from workers) as worker
on pasengers_flies.sochen_ID = worker.ID
group by sochen_ID,fly_num,worker.first_name,worker.last_name
having sochen_ID is not null and fly_num=@fly_num and COUNT(*)>=@num
end