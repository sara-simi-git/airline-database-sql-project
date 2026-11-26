--טריגר שקורה אחרי הכנסת כרטיס לנוסע
--אם המשקל גבוה מ5 קילו, על כל קילו נוסף הנוסע משלם 5 שח נוספים
create trigger add_payment
on pasengers_flies
after insert
as
begin
    update pf
    set add_payment = (i.kg - 5) * 5
    from pasengers_flies pf
    join inserted i on pf.ID = i.ID
    where i.kg > 5;
end
