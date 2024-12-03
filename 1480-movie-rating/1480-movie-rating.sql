WITH cte AS (
    SELECT 
        mr.movie_id, mr.user_id AS movie_user_id, mr.rating, mr.created_at, 
        u.user_id, u.name,
        mv.title
    FROM MovieRating mr 
    LEFT JOIN Users u ON mr.user_id = u.user_id 
    LEFT JOIN Movies mv ON mr.movie_id = mv.movie_id
)
(SELECT name AS results 
FROM cte 
GROUP BY name 
ORDER BY COUNT(*) DESC, name 
LIMIT 1)

UNION all

(SELECT title AS results 
FROM cte 
WHERE EXTRACT(YEAR_MONTH FROM created_at) = 202002
GROUP BY title 
ORDER BY AVG(rating) DESC, title 
LIMIT 1);
