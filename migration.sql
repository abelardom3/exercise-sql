
DROP TABLE movies;
DROP TABLE awards;


CREATE TABLE movies (
    id serial,
    title text,
    duration integer,
    rating varchar(10),
    genre text, 
    is_3d boolean NOT NULL,
    released_at timestamp with time zone, 
    score numeric(3,1)
);




CREATE TABLE awards (
    id serial,
    movie_id integer,
    kind text,
    names text
);




ALTER TABLE awards ADD COLUMN awards boolean;








