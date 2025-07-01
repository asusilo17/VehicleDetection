use ANPR;

drop table if exists #tempdata;

select
yolo_model,
label_name,
string_agg(object_type, ', ') object_type,
min(confidence) confidence,
avg(confidence) confidence_avg,
min(process_start_dt) process_start_dt,
max(process_end_dt) process_end_dt
into #tempdata
from t_object_detection
group by
yolo_model,
label_name

--select	
--* 
--from #tempdata
--order by 1

select
yolo_model,
count(1) JumlahDeteksi,
SUM(DATEDIFF(second, process_start_dt, process_end_dt)) as duration,
AVG(confidence) confidence
from #tempdata
group by 
yolo_model
order by 1