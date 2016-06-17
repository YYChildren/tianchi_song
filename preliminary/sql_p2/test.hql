use db_song_p2;
DROP TABLE IF EXISTS mars_tianchi_merge;
CREATE TABLE mars_tianchi_merge
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE 
    AS SELECT t1.*,t2.user_id,t2.gmt_create,t2.action_type,t2.ds
    FROM mars_tianchi_songs t1 JOIN mars_tianchi_user_actions t2
    ON t1.song_id=t2.song_id;


CREATE TABLE mars_tianchi_song_stat
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE 
    AS SELECT song_id, artist_id, publish_time, song_init_plays,
        language, gender, ds,
        count(user_id) uc, count(distinct user_id) duc,
        count(case action_type when 1 then 1 else null end) action_type_1,
        count(case action_type when 2 then 1 else null end) action_type_2,
        count(case action_type when 3 then 1 else null end) action_type_3
    FROM mars_tianchi_merge
    GROUP BY song_id, artist_id, publish_time, song_init_plays, 
        language, gender, ds;



CREATE TABLE mars_tianchi_art_stat
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE 
    AS SELECT artist_id,ds,
        count(user_id) uc, count(distinct user_id) duc,
        count(case action_type when 1 then 1 else null end) action_type_1,
        count(case action_type when 2 then 1 else null end) action_type_2,
        count(case action_type when 3 then 1 else null end) action_type_3
    FROM mars_tianchi_merge
    GROUP BY artist_id,ds;
