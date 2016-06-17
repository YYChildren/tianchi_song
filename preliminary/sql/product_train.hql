
use db_song;
DROP TABLE IF EXISTS product_train_1;
CREATE TABLE product_train_1
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE
    AS SELECT 
    artist_id,
    gender,

    -- 三月
    count(case when ds > '20150300' and ds < '20150400' and action_type = 1 then 1 else null end) / 31 neg_four_play_avg,
    count(case when ds > '20150300' and ds < '20150400' and action_type = 2 then 1 else null end) / 31 neg_four_down_avg,
    count(case when ds > '20150300' and ds < '20150400' and action_type = 3 then 1 else null end) / 31 neg_four_coll_avg,
    count(case when publish_time > '20150300' and publish_time < '20150400' and language = 0 then 1 else null end) neg_four_pub_lan_inc0,
    count(case when publish_time > '20150300' and publish_time < '20150400' and language = 1 then 1 else null end) neg_four_pub_lan_inc1,
    count(case when publish_time > '20150300' and publish_time < '20150400' and language = 2 then 1 else null end) neg_four_pub_lan_inc2,
    count(case when publish_time > '20150300' and publish_time < '20150400' and language = 3 then 1 else null end) neg_four_pub_lan_inc3,
    count(case when publish_time > '20150300' and publish_time < '20150400' and language = 4 then 1 else null end) neg_four_pub_lan_inc4,
    count(case when publish_time > '20150300' and publish_time < '20150400' and language = 11 then 1 else null end) neg_four_pub_lan_inc11,
    count(case when publish_time > '20150300' and publish_time < '20150400' and language = 12 then 1 else null end) neg_four_pub_lan_inc12,
    count(case when publish_time > '20150300' and publish_time < '20150400' and language = 14 then 1 else null end) neg_four_pub_lan_inc14,
    count(case when publish_time > '20150300' and publish_time < '20150400' and language = 100 then 1 else null end) neg_four_pub_lan_inc100,
    sum(case when publish_time > '20150300' and publish_time < '20150400' and language = 0 then song_init_plays else 0 end) neg_four_pub_lan_inp0,
    sum(case when publish_time > '20150300' and publish_time < '20150400' and language = 1 then song_init_plays else 0 end) neg_four_pub_lan_inp1,
    sum(case when publish_time > '20150300' and publish_time < '20150400' and language = 2 then song_init_plays else 0 end) neg_four_pub_lan_inp2,
    sum(case when publish_time > '20150300' and publish_time < '20150400' and language = 3 then song_init_plays else 0 end) neg_four_pub_lan_inp3,
    sum(case when publish_time > '20150300' and publish_time < '20150400' and language = 4 then song_init_plays else 0 end) neg_four_pub_lan_inp4,
    sum(case when publish_time > '20150300' and publish_time < '20150400' and language = 11 then song_init_plays else 0 end) neg_four_pub_lan_inp11,
    sum(case when publish_time > '20150300' and publish_time < '20150400' and language = 12 then song_init_plays else 0 end) neg_four_pub_lan_inp12,
    sum(case when publish_time > '20150300' and publish_time < '20150400' and language = 14 then song_init_plays else 0 end) neg_four_pub_lan_inp14,
    sum(case when publish_time > '20150300' and publish_time < '20150400' and language = 100 then song_init_plays else 0 end) neg_four_pub_lan_inp100,
    count(case when publish_time < '20150300' and language = 0 then 1 else null end) neg_four_pub_lan_bfc0,
    count(case when publish_time < '20150300' and language = 1 then 1 else null end) neg_four_pub_lan_bfc1,
    count(case when publish_time < '20150300' and language = 2 then 1 else null end) neg_four_pub_lan_bfc2,
    count(case when publish_time < '20150300' and language = 3 then 1 else null end) neg_four_pub_lan_bfc3,
    count(case when publish_time < '20150300' and language = 4 then 1 else null end) neg_four_pub_lan_bfc4,
    count(case when publish_time < '20150300' and language = 11 then 1 else null end) neg_four_pub_lan_bfc11,
    count(case when publish_time < '20150300' and language = 12 then 1 else null end) neg_four_pub_lan_bfc12,
    count(case when publish_time < '20150300' and language = 14 then 1 else null end) neg_four_pub_lan_bfc14,
    count(case when publish_time < '20150300' and language = 100 then 1 else null end) neg_four_pub_lan_bfc100,
    sum(case when publish_time < '20150300' and language = 0 then song_init_plays else 0 end) neg_four_pub_lan_bfp0,
    sum(case when publish_time < '20150300' and language = 1 then song_init_plays else 0 end) neg_four_pub_lan_bfp1,
    sum(case when publish_time < '20150300' and language = 2 then song_init_plays else 0 end) neg_four_pub_lan_bfp2,
    sum(case when publish_time < '20150300' and language = 3 then song_init_plays else 0 end) neg_four_pub_lan_bfp3,
    sum(case when publish_time < '20150300' and language = 4 then song_init_plays else 0 end) neg_four_pub_lan_bfp4,
    sum(case when publish_time < '20150300' and language = 11 then song_init_plays else 0 end) neg_four_pub_lan_bfp11,
    sum(case when publish_time < '20150300' and language = 12 then song_init_plays else 0 end) neg_four_pub_lan_bfp12,
    sum(case when publish_time < '20150300' and language = 14 then song_init_plays else 0 end) neg_four_pub_lan_bfp14,
    sum(case when publish_time < '20150300' and language = 100 then song_init_plays else 0 end) neg_four_pub_lan_bfp100,

    -- 四月
    count(case when ds > '20150400' and ds < '20150500' and action_type = 1 then 1 else null end) / 30 neg_three_play_avg,
    count(case when ds > '20150400' and ds < '20150500' and action_type = 2 then 1 else null end) / 30 neg_three_down_avg,
    count(case when ds > '20150400' and ds < '20150500' and action_type = 3 then 1 else null end) / 30 neg_three_coll_avg,
    count(case when publish_time > '20150400' and publish_time < '20150500' and language = 0 then 1 else null end) neg_three_pub_lan_inc0,
    count(case when publish_time > '20150400' and publish_time < '20150500' and language = 1 then 1 else null end) neg_three_pub_lan_inc1,
    count(case when publish_time > '20150400' and publish_time < '20150500' and language = 2 then 1 else null end) neg_three_pub_lan_inc2,
    count(case when publish_time > '20150400' and publish_time < '20150500' and language = 3 then 1 else null end) neg_three_pub_lan_inc3,
    count(case when publish_time > '20150400' and publish_time < '20150500' and language = 4 then 1 else null end) neg_three_pub_lan_inc4,
    count(case when publish_time > '20150400' and publish_time < '20150500' and language = 11 then 1 else null end) neg_three_pub_lan_inc11,
    count(case when publish_time > '20150400' and publish_time < '20150500' and language = 12 then 1 else null end) neg_three_pub_lan_inc12,
    count(case when publish_time > '20150400' and publish_time < '20150500' and language = 14 then 1 else null end) neg_three_pub_lan_inc14,
    count(case when publish_time > '20150400' and publish_time < '20150500' and language = 100 then 1 else null end) neg_three_pub_lan_inc100,
    sum(case when publish_time > '20150400' and publish_time < '20150500' and language = 0 then song_init_plays else 0 end) neg_three_pub_lan_inp0,
    sum(case when publish_time > '20150400' and publish_time < '20150500' and language = 1 then song_init_plays else 0 end) neg_three_pub_lan_inp1,
    sum(case when publish_time > '20150400' and publish_time < '20150500' and language = 2 then song_init_plays else 0 end) neg_three_pub_lan_inp2,
    sum(case when publish_time > '20150400' and publish_time < '20150500' and language = 3 then song_init_plays else 0 end) neg_three_pub_lan_inp3,
    sum(case when publish_time > '20150400' and publish_time < '20150500' and language = 4 then song_init_plays else 0 end) neg_three_pub_lan_inp4,
    sum(case when publish_time > '20150400' and publish_time < '20150500' and language = 11 then song_init_plays else 0 end) neg_three_pub_lan_inp11,
    sum(case when publish_time > '20150400' and publish_time < '20150500' and language = 12 then song_init_plays else 0 end) neg_three_pub_lan_inp12,
    sum(case when publish_time > '20150400' and publish_time < '20150500' and language = 14 then song_init_plays else 0 end) neg_three_pub_lan_inp14,
    sum(case when publish_time > '20150400' and publish_time < '20150500' and language = 100 then song_init_plays else 0 end) neg_three_pub_lan_inp100,
    count(case when publish_time < '20150400' and language = 0 then 1 else null end) neg_three_pub_lan_bfc0,
    count(case when publish_time < '20150400' and language = 1 then 1 else null end) neg_three_pub_lan_bfc1,
    count(case when publish_time < '20150400' and language = 2 then 1 else null end) neg_three_pub_lan_bfc2,
    count(case when publish_time < '20150400' and language = 3 then 1 else null end) neg_three_pub_lan_bfc3,
    count(case when publish_time < '20150400' and language = 4 then 1 else null end) neg_three_pub_lan_bfc4,
    count(case when publish_time < '20150400' and language = 11 then 1 else null end) neg_three_pub_lan_bfc11,
    count(case when publish_time < '20150400' and language = 12 then 1 else null end) neg_three_pub_lan_bfc12,
    count(case when publish_time < '20150400' and language = 14 then 1 else null end) neg_three_pub_lan_bfc14,
    count(case when publish_time < '20150400' and language = 100 then 1 else null end) neg_three_pub_lan_bfc100,
    sum(case when publish_time < '20150400' and language = 0 then song_init_plays else 0 end) neg_three_pub_lan_bfp0,
    sum(case when publish_time < '20150400' and language = 1 then song_init_plays else 0 end) neg_three_pub_lan_bfp1,
    sum(case when publish_time < '20150400' and language = 2 then song_init_plays else 0 end) neg_three_pub_lan_bfp2,
    sum(case when publish_time < '20150400' and language = 3 then song_init_plays else 0 end) neg_three_pub_lan_bfp3,
    sum(case when publish_time < '20150400' and language = 4 then song_init_plays else 0 end) neg_three_pub_lan_bfp4,
    sum(case when publish_time < '20150400' and language = 11 then song_init_plays else 0 end) neg_three_pub_lan_bfp11,
    sum(case when publish_time < '20150400' and language = 12 then song_init_plays else 0 end) neg_three_pub_lan_bfp12,
    sum(case when publish_time < '20150400' and language = 14 then song_init_plays else 0 end) neg_three_pub_lan_bfp14,
    sum(case when publish_time < '20150400' and language = 100 then song_init_plays else 0 end) neg_three_pub_lan_bfp100,

    -- 五月
    count(case when ds > '20150500' and ds < '20150600' and action_type = 1 then 1 else null end) / 31 neg_two_play_avg,
    count(case when ds > '20150500' and ds < '20150600' and action_type = 2 then 1 else null end) / 31 neg_two_down_avg,
    count(case when ds > '20150500' and ds < '20150600' and action_type = 3 then 1 else null end) / 31 neg_two_coll_avg,
    count(case when publish_time > '20150500' and publish_time < '20150600' and language = 0 then 1 else null end) neg_two_pub_lan_inc0,
    count(case when publish_time > '20150500' and publish_time < '20150600' and language = 1 then 1 else null end) neg_two_pub_lan_inc1,
    count(case when publish_time > '20150500' and publish_time < '20150600' and language = 2 then 1 else null end) neg_two_pub_lan_inc2,
    count(case when publish_time > '20150500' and publish_time < '20150600' and language = 3 then 1 else null end) neg_two_pub_lan_inc3,
    count(case when publish_time > '20150500' and publish_time < '20150600' and language = 4 then 1 else null end) neg_two_pub_lan_inc4,
    count(case when publish_time > '20150500' and publish_time < '20150600' and language = 11 then 1 else null end) neg_two_pub_lan_inc11,
    count(case when publish_time > '20150500' and publish_time < '20150600' and language = 12 then 1 else null end) neg_two_pub_lan_inc12,
    count(case when publish_time > '20150500' and publish_time < '20150600' and language = 14 then 1 else null end) neg_two_pub_lan_inc14,
    count(case when publish_time > '20150500' and publish_time < '20150600' and language = 100 then 1 else null end) neg_two_pub_lan_inc100,
    sum(case when publish_time > '20150500' and publish_time < '20150600' and language = 0 then song_init_plays else 0 end) neg_two_pub_lan_inp0,
    sum(case when publish_time > '20150500' and publish_time < '20150600' and language = 1 then song_init_plays else 0 end) neg_two_pub_lan_inp1,
    sum(case when publish_time > '20150500' and publish_time < '20150600' and language = 2 then song_init_plays else 0 end) neg_two_pub_lan_inp2,
    sum(case when publish_time > '20150500' and publish_time < '20150600' and language = 3 then song_init_plays else 0 end) neg_two_pub_lan_inp3,
    sum(case when publish_time > '20150500' and publish_time < '20150600' and language = 4 then song_init_plays else 0 end) neg_two_pub_lan_inp4,
    sum(case when publish_time > '20150500' and publish_time < '20150600' and language = 11 then song_init_plays else 0 end) neg_two_pub_lan_inp11,
    sum(case when publish_time > '20150500' and publish_time < '20150600' and language = 12 then song_init_plays else 0 end) neg_two_pub_lan_inp12,
    sum(case when publish_time > '20150500' and publish_time < '20150600' and language = 14 then song_init_plays else 0 end) neg_two_pub_lan_inp14,
    sum(case when publish_time > '20150500' and publish_time < '20150600' and language = 100 then song_init_plays else 0 end) neg_two_pub_lan_inp100,
    count(case when publish_time < '20150500' and language = 0 then 1 else null end) neg_two_pub_lan_bfc0,
    count(case when publish_time < '20150500' and language = 1 then 1 else null end) neg_two_pub_lan_bfc1,
    count(case when publish_time < '20150500' and language = 2 then 1 else null end) neg_two_pub_lan_bfc2,
    count(case when publish_time < '20150500' and language = 3 then 1 else null end) neg_two_pub_lan_bfc3,
    count(case when publish_time < '20150500' and language = 4 then 1 else null end) neg_two_pub_lan_bfc4,
    count(case when publish_time < '20150500' and language = 11 then 1 else null end) neg_two_pub_lan_bfc11,
    count(case when publish_time < '20150500' and language = 12 then 1 else null end) neg_two_pub_lan_bfc12,
    count(case when publish_time < '20150500' and language = 14 then 1 else null end) neg_two_pub_lan_bfc14,
    count(case when publish_time < '20150500' and language = 100 then 1 else null end) neg_two_pub_lan_bfc100,
    sum(case when publish_time < '20150500' and language = 0 then song_init_plays else 0 end) neg_two_pub_lan_bfp0,
    sum(case when publish_time < '20150500' and language = 1 then song_init_plays else 0 end) neg_two_pub_lan_bfp1,
    sum(case when publish_time < '20150500' and language = 2 then song_init_plays else 0 end) neg_two_pub_lan_bfp2,
    sum(case when publish_time < '20150500' and language = 3 then song_init_plays else 0 end) neg_two_pub_lan_bfp3,
    sum(case when publish_time < '20150500' and language = 4 then song_init_plays else 0 end) neg_two_pub_lan_bfp4,
    sum(case when publish_time < '20150500' and language = 11 then song_init_plays else 0 end) neg_two_pub_lan_bfp11,
    sum(case when publish_time < '20150500' and language = 12 then song_init_plays else 0 end) neg_two_pub_lan_bfp12,
    sum(case when publish_time < '20150500' and language = 14 then song_init_plays else 0 end) neg_two_pub_lan_bfp14,
    sum(case when publish_time < '20150500' and language = 100 then song_init_plays else 0 end) neg_two_pub_lan_bfp100,

    -- 六月
    count(case when ds > '20150600' and ds < '20150700' and action_type = 1 then 1 else null end) / 30 neg_one_play_avg,
    count(case when ds > '20150600' and ds < '20150700' and action_type = 2 then 1 else null end) / 30 neg_one_down_avg,
    count(case when ds > '20150600' and ds < '20150700' and action_type = 3 then 1 else null end) / 30 neg_one_coll_avg,
    count(case when publish_time > '20150600' and publish_time < '20150700' and language = 0 then 1 else null end) neg_one_pub_lan_inc0,
    count(case when publish_time > '20150600' and publish_time < '20150700' and language = 1 then 1 else null end) neg_one_pub_lan_inc1,
    count(case when publish_time > '20150600' and publish_time < '20150700' and language = 2 then 1 else null end) neg_one_pub_lan_inc2,
    count(case when publish_time > '20150600' and publish_time < '20150700' and language = 3 then 1 else null end) neg_one_pub_lan_inc3,
    count(case when publish_time > '20150600' and publish_time < '20150700' and language = 4 then 1 else null end) neg_one_pub_lan_inc4,
    count(case when publish_time > '20150600' and publish_time < '20150700' and language = 11 then 1 else null end) neg_one_pub_lan_inc11,
    count(case when publish_time > '20150600' and publish_time < '20150700' and language = 12 then 1 else null end) neg_one_pub_lan_inc12,
    count(case when publish_time > '20150600' and publish_time < '20150700' and language = 14 then 1 else null end) neg_one_pub_lan_inc14,
    count(case when publish_time > '20150600' and publish_time < '20150700' and language = 100 then 1 else null end) neg_one_pub_lan_inc100,
    sum(case when publish_time > '20150600' and publish_time < '20150700' and language = 0 then song_init_plays else 0 end) neg_one_pub_lan_inp0,
    sum(case when publish_time > '20150600' and publish_time < '20150700' and language = 1 then song_init_plays else 0 end) neg_one_pub_lan_inp1,
    sum(case when publish_time > '20150600' and publish_time < '20150700' and language = 2 then song_init_plays else 0 end) neg_one_pub_lan_inp2,
    sum(case when publish_time > '20150600' and publish_time < '20150700' and language = 3 then song_init_plays else 0 end) neg_one_pub_lan_inp3,
    sum(case when publish_time > '20150600' and publish_time < '20150700' and language = 4 then song_init_plays else 0 end) neg_one_pub_lan_inp4,
    sum(case when publish_time > '20150600' and publish_time < '20150700' and language = 11 then song_init_plays else 0 end) neg_one_pub_lan_inp11,
    sum(case when publish_time > '20150600' and publish_time < '20150700' and language = 12 then song_init_plays else 0 end) neg_one_pub_lan_inp12,
    sum(case when publish_time > '20150600' and publish_time < '20150700' and language = 14 then song_init_plays else 0 end) neg_one_pub_lan_inp14,
    sum(case when publish_time > '20150600' and publish_time < '20150700' and language = 100 then song_init_plays else 0 end) neg_one_pub_lan_inp100,
    count(case when publish_time < '20150600' and language = 0 then 1 else null end) neg_one_pub_lan_bfc0,
    count(case when publish_time < '20150600' and language = 1 then 1 else null end) neg_one_pub_lan_bfc1,
    count(case when publish_time < '20150600' and language = 2 then 1 else null end) neg_one_pub_lan_bfc2,
    count(case when publish_time < '20150600' and language = 3 then 1 else null end) neg_one_pub_lan_bfc3,
    count(case when publish_time < '20150600' and language = 4 then 1 else null end) neg_one_pub_lan_bfc4,
    count(case when publish_time < '20150600' and language = 11 then 1 else null end) neg_one_pub_lan_bfc11,
    count(case when publish_time < '20150600' and language = 12 then 1 else null end) neg_one_pub_lan_bfc12,
    count(case when publish_time < '20150600' and language = 14 then 1 else null end) neg_one_pub_lan_bfc14,
    count(case when publish_time < '20150600' and language = 100 then 1 else null end) neg_one_pub_lan_bfc100,
    sum(case when publish_time < '20150600' and language = 0 then song_init_plays else 0 end) neg_one_pub_lan_bfp0,
    sum(case when publish_time < '20150600' and language = 1 then song_init_plays else 0 end) neg_one_pub_lan_bfp1,
    sum(case when publish_time < '20150600' and language = 2 then song_init_plays else 0 end) neg_one_pub_lan_bfp2,
    sum(case when publish_time < '20150600' and language = 3 then song_init_plays else 0 end) neg_one_pub_lan_bfp3,
    sum(case when publish_time < '20150600' and language = 4 then song_init_plays else 0 end) neg_one_pub_lan_bfp4,
    sum(case when publish_time < '20150600' and language = 11 then song_init_plays else 0 end) neg_one_pub_lan_bfp11,
    sum(case when publish_time < '20150600' and language = 12 then song_init_plays else 0 end) neg_one_pub_lan_bfp12,
    sum(case when publish_time < '20150600' and language = 14 then song_init_plays else 0 end) neg_one_pub_lan_bfp14,
    sum(case when publish_time < '20150600' and language = 100 then song_init_plays else 0 end) neg_one_pub_lan_bfp100

    FROM mars_tianchi_merge
    GROUP BY artist_id, gender;

DROP TABLE IF EXISTS product_train_2;
CREATE TABLE product_train_2
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;
    AS SELECT
    artist_id,
    (datediff(from_unixtime(unix_timestamp(ds,"yyyyMMdd")), from_unixtime(unix_timestamp('20150701',"yyyyMMdd"))) + 1)  ndays,
    ds
    count(case action_type when 1 then 1 else null end) nplays
    FROM mars_tianchi_merge
    WHERE ds > '20150700'
    GROUP BY artist_id, ds;

-- impala下调用
use db_song;
invalidate metadata;
INSERT INTO TABLE product_train_2 values
    ('2b7fedeea967becd9408b896de8ff903', 25, '20150725', 0),
    ('2b7fedeea967becd9408b896de8ff903', 31, '20150731', 0);
    
-- hive 下调用
INSERT OVERWRITE TABLE product_train 
    SELECT t1.*, t2.ndays, t2.ds, t2.nplays
    FROM product_train_1 t1 JOIN product_train_2 t2 
    ON t1.artist_id = t2.artist_id;




