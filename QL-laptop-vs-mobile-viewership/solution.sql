select 
count(device_type) filter (where device_type = 'laptop') as laptop_views,
count(device_type) filter (where device_type in ('phone','tablet')) as mobile_views
from viewership;
