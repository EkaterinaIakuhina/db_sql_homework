create table if not exists worker (
	id_worker serial primary key, 
	name varchar(60) not null, 
	department integer not null, 
	id_manager integer not null references worker(id_worker)
);