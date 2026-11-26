
create view user_pasenger as
select pasenger_ID,first_name+' '+last_name as 'full name',CONVERT(int,count(*))  as 'flies amount',sum(payment+add_payment) as 'total payment'
from pasengers
group by pasenger_ID,first_name,last_name
