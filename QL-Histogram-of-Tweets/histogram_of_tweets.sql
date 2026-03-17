with tweet_group as (
select 
user_id,
count(tweet_id) as tweet_bucket
from tweets 
where to_char(tweet_date,'YYYY') = '2022'
group by user_id
) select 
tweet_bucket,
count(user_id) as users_num from tweet_group
group by tweet_bucket;
