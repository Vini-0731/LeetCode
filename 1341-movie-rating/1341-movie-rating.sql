# Write your MySQL query statement below
(
    SELECT Users.name AS results
    FROM MovieRating
    INNER JOIN Users
    USING (user_id)
    GROUP BY user_id
    ORDER BY COUNT(MovieRating.movie_id) DESC, Users.name
    LIMIT 1
)
UNION ALL

(
    SELECT m1.title AS results FROM movierating m2
    INNER JOIN movies m1 ON m2.movie_id=m1.movie_id
    WHERE DATE_FORMAT(created_at, '%Y-%m') = '2020-02'
    GROUP BY m2.movie_id
    ORDER BY AVG(m2.rating) DESC,m1.title ASC LIMIT 1
)

