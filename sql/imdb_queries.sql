SELECT `id`, `name`, `year`, `rank` FROM `movies` WHERE `year` = 1995;
SELECT a.first_name, a.last_name FROM actors a 
                                JOIN roles r ON a.id=r.actor_id
                                JOIN movies m ON m.id=r.movie_id
                                WHERE m.name = "Lost in Translation"	
SELECT COUNT(*)  FROM actors a 
                                JOIN roles r ON a.id=r.actor_id
                                JOIN movies m ON m.id=r.movie_id
                                WHERE m.name = "Lost in Translation"
SELECT a.first_name, a.last_name FROM directors a 
                                JOIN movies_directors r ON a.id=r.director_id
                                JOIN movies m ON m.id=r.movie_id
                                WHERE m.name = "Fight Club"
SELECT COUNT(*) FROM movies a 
                     JOIN movies_directors r ON r.movie_id = a.id
                     JOIN directors m ON m.id=r.director_id
                     WHERE (m.first_name = "Clint" AND m.last_name="Eastwood")
SELECT a.name FROM movies a 
                     JOIN movies_directors r ON r.movie_id = a.id
                     JOIN directors m ON m.id=r.director_id
                     WHERE (m.first_name = "Clint" AND m.last_name="Eastwood")
SELECT a.first_name,a.last_name FROM directors a
									JOIN movies_directors r ON a.id = r.director_id
                                    JOIN movies m ON r.movie_id = m.id
                                    JOIN movies_genres n ON m.id = n.movie_id
                                    WHERE n.genre = "Horror"
SELECT a.first_name,a.last_name FROM actors a
									JOIN roles r ON a.id = r.actor_id
                                    JOIN movies m ON r.movie_id= m.id
                                    JOIN movies_directors n ON m.id = n.movie_id
                                    JOIN directors d ON n.director_id=d.id
                                    WHERE d.first_name="Christopher" AND d.last_name="Nolan"

