create table if not exists tracks (
	track_id SERIAL primary key,
	name VARCHAR(60) not null,
	duration decimal(6, 2) not null
); 

alter table if exists tracks 
	add column if not exists album_id integer references album(album_id);


create table if not exists album (
	album_id SERIAL primary key, 
	name VARCHAR(60) not null, 
	year smallint not null
);

create table if not exists singer (
	singer_id SERIAL primary key, 
	name VARCHAR(60) not null
);

create table if not exists albumSinger (
	id SERIAL primary key,
	album_id integer not null references album(album_id),
	singer_id integer not null references singer(singer_id)
); 

create table if not exists genre (
	genre_id SERIAL primary key, 
	name VARCHAR(60) not null
);

create table if not exists genreSinger( 
	id SERIAL primary key,
	genre_id integer not null references genre(genre_id), 
	singer_id integer not null references singer(singer_id)
);

create table if not exists collection (
	collection_id serial primary key, 
	name varchar(60) not null, 
	year smallint not null
); 

create table if not exists trackCollection (
	id serial primary key,
	track_id integer not null references tracks(track_id),
	collection_id integer not null references collection(collection_id)
);


