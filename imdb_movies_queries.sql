use project_movie_database
select * from movies; 
select * from directors;
select count(*) as total_movies from movies;
select * from directors
where name in ('James Cameron', 'Luc Besson', 'John Woo');
SELECT * FROM directors 
WHERE name LIKE 'S%';
SELECT COUNT(*) AS male_directors_count 
FROM directors 
WHERE gender = 1;
SELECT name FROM directors 
WHERE gender = 1 
ORDER BY id 
LIMIT 1 OFFSET 9;
SELECT original_title, popularity FROM movies 
ORDER BY popularity DESC 
LIMIT 3;
SELECT original_title, revenue FROM movies 
ORDER BY revenue DESC 
LIMIT 3;
SELECT MAX(vote_average) AS highest_vote_average FROM movies 
WHERE release_date >= '2000-01-01';
SELECT m.original_title 
FROM movies m 
JOIN directors d ON m.director_id = d.id 
WHERE d.name = 'Brenda Chapman';
SELECT d.name, COUNT(m.id) AS total_movies_directed 
FROM movies m 
JOIN directors d ON m.director_id = d.id 
GROUP BY d.id, d.name 
ORDER BY total_movies_directed DESC 
LIMIT 1;
SELECT d.name, SUM(m.revenue) AS total_revenue_generated 
FROM movies m 
JOIN directors d ON m.director_id = d.id 
GROUP BY d.id, d.name 
ORDER BY total_revenue_generated DESC 
LIMIT 1;









