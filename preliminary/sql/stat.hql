-- hive
use db_song;
DROP TABLE IF EXISTS mars_tianchi_time_stat;
CREATE TABLE mars_tianchi_time_stat
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE 
    AS SELECT
    ds,
    count(case language when 0 then 1 else null end) language_c0,
    count(case language when 1 then 1 else null end) language_c1,
    count(case language when 2 then 1 else null end) language_c2,
    count(case language when 3 then 1 else null end) language_c3,
    count(case language when 4 then 1 else null end) language_c4,
    count(case language when 11 then 1 else null end) language_c11,
    count(case language when 12 then 1 else null end) language_c12,
    count(case language when 14 then 1 else null end) language_c14,
    count(case language when 100 then 1 else null end) language_c100,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '0' then 1 else null end) gmt_0,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '1' then 1 else null end) gmt_1,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '2' then 1 else null end) gmt_2,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '3' then 1 else null end) gmt_3,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '4' then 1 else null end) gmt_4,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '5' then 1 else null end) gmt_5,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '6' then 1 else null end) gmt_6,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '7' then 1 else null end) gmt_7,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '8' then 1 else null end) gmt_8,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '9' then 1 else null end) gmt_9,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '10' then 1 else null end) gmt_10,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '11' then 1 else null end) gmt_11,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '12' then 1 else null end) gmt_12,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '13' then 1 else null end) gmt_13,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '14' then 1 else null end) gmt_14,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '15' then 1 else null end) gmt_15,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '16' then 1 else null end) gmt_16,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '17' then 1 else null end) gmt_17,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '18' then 1 else null end) gmt_18,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '19' then 1 else null end) gmt_19,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '20' then 1 else null end) gmt_20,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '21' then 1 else null end) gmt_21,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '22' then 1 else null end) gmt_22,
    count(case from_unixtime(cast(gmt_create as bigint),'HH') when '23' then 1 else null end) gmt_23
    from mars_tianchi_merge
    group by ds;


DROP TABLE IF EXISTS mars_tianchi_user_stat;
CREATE TABLE mars_tianchi_user_stat
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE 
    AS SELECT
    user_id,
    ds,
    count(artist_id) ac,
    count(distinct artist_id) dac
    FROM mars_tianchi_merge
    GROUP BY user_id,ds;


DROP TABLE IF EXISTS mars_tianchi_artist_stat;
CREATE TABLE mars_tianchi_artist_stat
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE
    AS SELECT
    artist_id,
    unix_timestamp(ds, "yyyyMMdd") tms,
    ds,
    count(user_id) uc,
    count(DISTINCT user_id) duc,
    count(case action_type when 1 then 1 else null end) action_type_c1,
    count(case action_type when 2 then 1 else null end) action_type_c2,
    count(case action_type when 3 then 1 else null end) action_type_c3
    from mars_tianchi_merge
    GROUP BY artist_id,ds;




-- impala下调用
use db_song;
invalidate metadata;
INSERT INTO TABLE mars_tianchi_artist_stat values
    ('2b7fedeea967becd9408b896de8ff903', 1430236800, '20150429', 0, 0, 0, 0, 0),
    ('2b7fedeea967becd9408b896de8ff903', 1431964800, '20150519', 0, 0, 0, 0, 0),
    ('2b7fedeea967becd9408b896de8ff903', 1437753600, '20150725', 0, 0, 0, 0, 0),
    ('2b7fedeea967becd9408b896de8ff903', 1438272000, '20150731', 0, 0, 0, 0, 0);


-- HIVE 下调用
use db_song;
DROP TABLE IF EXISTS artist_ids;
CREATE TABLE artist_ids
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE
    AS SELECT DISTINCT artist_id artist_id
    FROM mars_tianchi_artist_stat;


DROP TABLE IF EXISTS tmp_rs;
CREATE TABLE tmp_rs(
    artist_id STRING ,
    ndays INT ,
    plays INT 
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

-- hive下调用
DROP TABLE IF EXISTS result;
CREATE TABLE result
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE
    AS SELECT artist_id,plays, from_unixtime(unix_timestamp(date_add('2015-08-31 00:00:00', tms), 'yyyy-MM-dd'), 'yyyyMMdd') ds
    FROM tmp_rs;
