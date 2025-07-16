use ANPR;

update a set
	a.tvl_file_name = REPLACE(REPLACE(a.tvl_file_name, 'DataVideo/', ''), '.mp4','')
from TransVehiceLicense as a

drop table if exists #temp_yolo

create table #temp_yolo (
metode varchar(15)
)

insert into #temp_yolo values 
('Balance'),
('Extra Large'),
('Large'),
('Nano'),
('Small'),
('Medium')

;with cta as (
	select
	* from m_plate_sample
	join #temp_yolo
	on 1 = 1
), cte as (
select 
	metode,
	tvl_file_name as lable,
	tvl_license_number as license,
	count(1) as detect,
	min(tvl_capture_datetime) as capturedt,
	1 as isdetect
from TransVehiceLicense
where tvl_file_name = tvl_license_number
group by
	metode,
	tvl_file_name,
	tvl_license_number
), cto as (
select
metode,
tvl_file_name as license,
MIN(tvl_capture_datetime) as startdt
from TransVehiceLicense
group by 
metode,
tvl_file_name
)

select 
a.license_number,
a.metode,
cte.license,
cte.detect,
cto.startdt,
cte.capturedt,
DATEDIFF(MINUTE, cto.startdt, cte.capturedt) as duration,
isnull(cte.isdetect,0) as isdetect
from cta as a
left join cte
	on cte.license = a.license_number collate Latin1_General_100_CI_AS
	and cte.metode = a.metode collate Latin1_General_100_CI_AS
left join cto
	on cto.license = a.license_number collate Latin1_General_100_CI_AS
	and cto.metode = a.metode collate Latin1_General_100_CI_AS
order by 1