DELETE FROM movies;
INSERT INTO movies (title, duration, rating, genre, is_3d, released_at, score) VALUES ('Frozen', 102, 'PG', 'Animation', TRUE, '2013-11-27 00:00:00 UTC', 7.6);
INSERT INTO movies (title, duration, rating, genre, is_3d, released_at, score) VALUES ('X-Men: Apocalypse', 144, 'PG-13', 'Action', TRUE, '2016-05-27 00:00:00 UTC', 7.4);
INSERT INTO movies (title, duration, rating, genre, is_3d, released_at, score) VALUES ('The Princess Bride', 98, 'PG', 'Adventure', FALSE, '1987-10-09 00:00:00 UTC', 8.1);
INSERT INTO movies (title, duration, rating, genre, is_3d, released_at, score) VALUES ('Pulp Fiction', 154, 'R', 'Crime', FALSE, '1994-10-14 00:00:00 UTC', 8.9);





SELECT id, title, score FROM movies ORDER BY score ASC LIMIT 1; 

SELECT id, title, duration FROM movies WHERE title IN ('The Princess Bride', 'X-Men: Apocalypse');

SELECT id, title, released_at FROM movies ORDER BY released_at ASC;

SELECT id, title, genre, score FROM movies WHERE score BETWEEN 7.5 AND 8.5 AND rating = 'PG';

UPDATE movies SET score = score + 0.5 WHERE genre IN ('Crime');

UPDATE movies SET score = score - 2.0 WHERE is_3d IS TRUE;

DELETE FROM movies WHERE title LIKE '%en%';
