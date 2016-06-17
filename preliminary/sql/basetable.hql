use db_song;
CREATE TABLE mars_tianchi_user_actions(
    user_id String,
    song_id String,
    gmt_create String,
    action_type String,
    ds String
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

CREATE TABLE mars_tianchi_songs(
    song_id String,
    artist_id String,
    publish_time String,
    song_init_plays String,
    language String,
    gender String   
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;