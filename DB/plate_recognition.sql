use ANPR;

with cte as (
select 
distinct
replace(replace(tvl_file_name, 'datavideo/', ''), '.mp4', '') as lable,
tvl_license_number as license
from TransVehiceLicense
where metode = 'paddleocr'
--and cast(tvl_capture_datetime as date) = '2025-06-28'
)

select * from cte
where lable = license