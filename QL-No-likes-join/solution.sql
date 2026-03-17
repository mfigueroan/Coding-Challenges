SELECT a.page_id
FROM pages a 
left join page_likes b on b.page_id = a.page_id
where b.page_id is null
group by a.page_id
order by page_id asc;
