
use db_song;
DROP TABLE IF EXISTS train_song_stat_1;
CREATE TABLE train_song_stat_1
    AS SELECT
    -- 歌曲属性 
    song_id,
    publish_time,
    song_init_plays,
    language,

    -- 艺人属性
    artist_id,
    gender,

    -- first month
    count(case when ds > '20150300' and ds < '20150400' and action_type = 1 then 1 else null end) firmon_play,
    count(case when ds > '20150300' and ds < '20150400' and action_type = 2 then 1 else null end) firmon_download,
    count(case when ds > '20150300' and ds < '20150400' and action_type = 3 then 1 else null end) firmon_collect,

    -- second month
    count(case when ds > '20150400' and ds < '20150500' and action_type = 1 then 1 else null end) secmon_play,
    count(case when ds > '20150400' and ds < '20150500' and action_type = 2 then 1 else null end) secmon_download,
    count(case when ds > '20150400' and ds < '20150500' and action_type = 3 then 1 else null end) secmon_collect,

    -- third month
    count(case when ds > '20150500' and ds < '20150600' and action_type = 1 then 1 else null end) thimon_play,
    count(case when ds > '20150500' and ds < '20150600' and action_type = 2 then 1 else null end) thimon_download,
    count(case when ds > '20150500' and ds < '20150600' and action_type = 3 then 1 else null end) thimon_collect,

    -- forth month
    count(case when ds > '20150600' and ds < '20150700' and action_type = 1 then 1 else null end) formon_play,
    count(case when ds > '20150600' and ds < '20150700' and action_type = 2 then 1 else null end) formon_download,
    count(case when ds > '20150600' and ds < '20150700' and action_type = 3 then 1 else null end) formon_collect,

    count(case when action_type = 1 then 1 else null end) full_play,
    count(case when action_type = 2 then 1 else null end) full_download,
    count(case when action_type = 3 then 1 else null end) full_collect,

    -- 用户属性 
    count(distinct user_id) user_count
    -- gmt_create
    FROM mars_tianchi_merge
    GROUP BY song_id,artist_id,publish_time,song_init_plays,language,gender;


DROP TABLE IF EXISTS train_song_stat_2;
CREATE TABLE train_song_stat_2
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
    AS SELECT
    song_id,
    ds,
    -- 时间属性
    (case when ds > '20150700' and ds < '20150800' then 1 else 2 end) months,
    (datediff(from_unixtime(unix_timestamp(ds,"yyyyMMdd")), from_unixtime(unix_timestamp('20150701',"yyyyMMdd"))) + 1)/7 weekths,
    (datediff(from_unixtime(unix_timestamp(ds,"yyyyMMdd")), from_unixtime(unix_timestamp('20150701',"yyyyMMdd"))) + 1)  days,
    weekday(from_unixtime(unix_timestamp(ds,"yyyyMMdd"))) dayofweek,
    count(case action_type when 1 then 1 else null end) Plays
    FROM mars_tianchi_merge
    WHERE ds > '20150700'
    GROUP BY song_id, ds;
    
-- hive 下调用
DROP TABLE IF EXISTS train_song_stat;
CREATE TABLE train_song_stat 
    SELECT t1.*, t2.ds, t2.months, t2.weekths, t2.days, t2.dayofweek, t2.Plays
    FROM train_song_stat_1 t1 JOIN train_song_stat_2 t2 
    ON t1.song_id = t2.song_id;
