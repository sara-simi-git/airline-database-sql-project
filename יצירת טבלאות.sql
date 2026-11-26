
create table pasengers(
ID int not null primary key,
pasenger_ID bigint not null,
first_name varchar(20) not null,
last_name varchar(20) not null,
f_country varchar(20) not null default 'Israel',
s_country varchar(20) not null,
payment int not null,
kg int not null,
add_payment int null,
fly_number int not null,
constraint rs_fly_number foreign key (fly_number) references flies (fly_num)
)

create table flies(
fly_num int primary key,
fly_date datetime not null, 
up_hour time not null,
down_hour time not null,
f_country varchar(20) not null,
s_country varchar(20) not null,
plane_number int not null
constraint rs_plane_number foreign key (plane_number) references planes (plane_num)
)

create table planes(
plane_num int not null primary key,
company_plane varchar(20),
chair_num int not null
)

create table pasengers_flies(
ID int not null primary key,
p_num int not null,
constraint rs_p foreign key (p_num) references pasengers (ID),
f_ID int not null,
constraint rs_pf foreign key (f_ID) references flies (fly_num)
)

create table workers(
ID int not null primary key,
worker_ID bigint not null,
first_name varchar(20) not null,
last_name varchar(20) not null,
worker_type_ID int not null,
constraint rs_worker_type foreign key (worker_type_ID) references worker_type (ID),
plane_num int not null,
constraint rs_worker_plane foreign key (plane_num) references planes (plane_num),
salary_ID int
)


