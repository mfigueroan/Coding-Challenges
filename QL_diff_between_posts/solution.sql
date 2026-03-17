SELECT 
user_id,
max(post_date::DATE) - min (post_date::DATE) as days_between
FROM posts 
where DATE_PART('year',post_date::DATE) = 2021
group by user_id
HAVING COUNT(post_id)>1
order by days_between asc;
