create table movie (
  movie_id serial primary key,
  title text,
  media_type_id int references media_type(media_type_id)
  );

insert into movie (title, media_type_id)
values
('Gattaca', 3),
('Voldemort and the Pesky Child', 3);

ALTER TABLE movie ADD COLUMN genre_id INTEGER REFERENCES genre(genre_id);
-- Part 2

update movie
set genre_id = 20
where movie_id = 1;

update movie
set genre_id = 22
where movie_id = 2;

select * from movie
join genre on movie.genre_id = genre.genre_id;

select ar.name, al.title from artist ar
join album al on ar.artist_id=al.artist;

-- LONG FORMAT
-- select genre_id from genre
-- where name in ('Jazz', 'Blues');

-- select * from track
-- where genre_id in (2, 6);


select * from track
where genre_id in (
  select genre_id from genre
  where name in ('Jazz', 'Blues')
  );


  update employee 
set phone = null
where employee_id = 1;

select * from employee;

select * from customer
where company is null;


select distinct country from customer;

select * from customer where fax is null;


