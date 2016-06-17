USE db_song_p2;

DROP TABLE IF EXISTS t_song_stat;
CREATE TABLE mars_tianchi_songs_std
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE
AS SELECT 
song_id,        
artist_id,      
publish_time,
from_unixtime(unix_timestamp(publish_time, 'yyyyMMdd'),'yyyy-MM-dd HH:mm:ss') publish_time_std,
song_init_plays,
language,
gender
FROM mars_tianchi_songs;


DROP TABLE IF EXISTS t_song_stat;
CREATE TABLE t_song_stat 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE
AS SELECT 
song_id,
count(user_id) uc,
count(distinct user_id) duc
FROM mars_tianchi_user_actions;

SELECT 
artist_id,
datediff('2015-03-01', startdate)