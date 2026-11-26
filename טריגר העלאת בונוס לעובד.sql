-- הטריגר מעדכן את הבונוס של העובדים ב־50 לכל עובד שמטוסו נוסף לטבלת הטיסות

create trigger worker_bonus
on flies
after insert
as
begin
    update workers
    set bonus = bonus + 50
    where plane_num in (select plane_number from inserted);
end