SELECT user_id, MAX(post_date::DATE) - MIN(post_date::DATE) as days_between FROM posts
WHERE EXTRACT(YEAR FROM post_date) = '2021'
GROUP BY user_id
HAVING Count(user_id) > 1