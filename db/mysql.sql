SELECT d.*, m.title, m.year
FROM movies m, directors d
WHERE m.director_id = d.id
ORDER BY m.director_id;

SELECT d.*, m.title, m.year
FROM movies m, directors d
WHERE m.director_id = d.id
    AND d.id = 1
ORDER BY m.director_id;

SELECT * FROM movies;
