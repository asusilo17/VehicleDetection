use ANPR;

with cte as (
select 
--distinct
replace(replace(replace(tvl_file_name, 'datavideo/', ''), '.mp4', ''), 'datavideo\', '') as lable,
tvl_license_number as license,
MIN(tvl_capture_datetime) as capturedt
--delete
--select *
from TransVehiceLicense(nolock)
where metode = 'paddleocr'
and cast(tvl_capture_datetime as date) = '2025-07-14'
group by 
replace(replace(replace(tvl_file_name, 'datavideo/', ''), '.mp4', ''), 'datavideo\', ''),
tvl_license_number
),
cta as (
select 
--distinct
replace(replace(replace(tvl_file_name, 'datavideo/', ''), '.mp4', ''), 'datavideo\', '') as lable,
MIN(tvl_capture_datetime) as capturedt
--delete
--select *
from TransVehiceLicense(nolock)
where metode = 'paddleocr'
and cast(tvl_capture_datetime as date) = '2025-07-14'
group by 
replace(replace(replace(tvl_file_name, 'datavideo/', ''), '.mp4', ''), 'datavideo\', '')
)

select 
cte.lable,
cte.license,
cta.capturedt as StartDT,
cte.capturedt as EndDT

from cte
left join cta
	on cta.lable = cte.lable
where cte.lable = cte.license