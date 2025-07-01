drop table if exists t_object_detection;

create table t_object_detection(
id int identity,
yolo_model varchar(50),
label_name varchar(50),
object_type varchar(50),
confidence float,
process_start_dt datetime,
process_end_dt datetime
)