USE db_song_p2;
DROP TABLE IF EXISTS product_train;
CREATE TABLE product_train(
    artist_id STRING ,
    gender INT ,



    ---------------------------------------------
    -----------4月前-----------------------------
    ---------------------------------------------
    neg_four_play_avg DOUBLE ,      -- 日均播放量
    neg_four_down_avg DOUBLE ,      -- 日均下载量
    neg_four_coll_avg DOUBLE ,      -- 日均收藏量
    -- neg_four_play_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_four_down_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_four_coll_slope DOUBLE ,    -- 回归线的斜率 
    -- 当月内不同语言的歌曲发布统计
    neg_four_pub_lan_inc0 INT ,
    neg_four_pub_lan_inc1 INT ,
    neg_four_pub_lan_inc2 INT ,
    neg_four_pub_lan_inc3 INT ,
    neg_four_pub_lan_inc4 INT ,
    neg_four_pub_lan_inc11 INT ,
    neg_four_pub_lan_inc12 INT ,
    neg_four_pub_lan_inc14 INT ,
    neg_four_pub_lan_inc100 INT ,
    -- 当月内不同语言的歌曲热度统计
    neg_four_pub_lan_inp0 INT ,
    neg_four_pub_lan_inp1 INT ,
    neg_four_pub_lan_inp2 INT ,
    neg_four_pub_lan_inp3 INT ,
    neg_four_pub_lan_inp4 INT ,
    neg_four_pub_lan_inp11 INT ,
    neg_four_pub_lan_inp12 INT ,
    neg_four_pub_lan_inp14 INT ,
    neg_four_pub_lan_inp100 INT ,
    -- 当月前不同语言的歌曲发布统计
    neg_four_pub_lan_bfc0 INT ,
    neg_four_pub_lan_bfc1 INT ,
    neg_four_pub_lan_bfc2 INT ,
    neg_four_pub_lan_bfc3 INT ,
    neg_four_pub_lan_bfc4 INT ,
    neg_four_pub_lan_bfc11 INT ,
    neg_four_pub_lan_bfc12 INT ,
    neg_four_pub_lan_bfc14 INT ,
    neg_four_pub_lan_bfc100 INT ,
    -- 当月前不同语言的歌曲热度统计
    neg_four_pub_lan_bfp0 INT ,
    neg_four_pub_lan_bfp1 INT ,
    neg_four_pub_lan_bfp2 INT ,
    neg_four_pub_lan_bfp3 INT ,
    neg_four_pub_lan_bfp4 INT ,
    neg_four_pub_lan_bfp11 INT ,
    neg_four_pub_lan_bfp12 INT ,
    neg_four_pub_lan_bfp14 INT ,
    neg_four_pub_lan_bfp100 INT ,



    ---------------------------------------------
    -----------3月前-----------------------------
    ---------------------------------------------
    neg_three_play_avg DOUBLE ,      -- 日均播放量
    neg_three_down_avg DOUBLE ,      -- 日均下载量
    neg_three_coll_avg DOUBLE ,      -- 日均收藏量
    -- neg_three_play_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_three_down_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_three_coll_slope DOUBLE ,    -- 回归线的斜率 
    -- 当月内不同语言的歌曲发布统计
    neg_three_pub_lan_inc0 INT ,
    neg_three_pub_lan_inc1 INT ,
    neg_three_pub_lan_inc2 INT ,
    neg_three_pub_lan_inc3 INT ,
    neg_three_pub_lan_inc4 INT ,
    neg_three_pub_lan_inc11 INT ,
    neg_three_pub_lan_inc12 INT ,
    neg_three_pub_lan_inc14 INT ,
    neg_three_pub_lan_inc100 INT ,
    -- 当月内不同语言的歌曲热度统计
    neg_three_pub_lan_inp0 INT ,
    neg_three_pub_lan_inp1 INT ,
    neg_three_pub_lan_inp2 INT ,
    neg_three_pub_lan_inp3 INT ,
    neg_three_pub_lan_inp4 INT ,
    neg_three_pub_lan_inp11 INT ,
    neg_three_pub_lan_inp12 INT ,
    neg_three_pub_lan_inp14 INT ,
    neg_three_pub_lan_inp100 INT ,
    -- 当月前不同语言的歌曲发布统计
    neg_three_pub_lan_bfc0 INT ,
    neg_three_pub_lan_bfc1 INT ,
    neg_three_pub_lan_bfc2 INT ,
    neg_three_pub_lan_bfc3 INT ,
    neg_three_pub_lan_bfc4 INT ,
    neg_three_pub_lan_bfc11 INT ,
    neg_three_pub_lan_bfc12 INT ,
    neg_three_pub_lan_bfc14 INT ,
    neg_three_pub_lan_bfc100 INT ,
    -- 当月前不同语言的歌曲热度统计
    neg_three_pub_lan_bfp0 INT ,
    neg_three_pub_lan_bfp1 INT ,
    neg_three_pub_lan_bfp2 INT ,
    neg_three_pub_lan_bfp3 INT ,
    neg_three_pub_lan_bfp4 INT ,
    neg_three_pub_lan_bfp11 INT ,
    neg_three_pub_lan_bfp12 INT ,
    neg_three_pub_lan_bfp14 INT ,
    neg_three_pub_lan_bfp100 INT ,



    ---------------------------------------------
    -----------2月前-----------------------------
    ---------------------------------------------
    neg_two_play_avg DOUBLE ,      -- 日均播放量
    neg_two_down_avg DOUBLE ,      -- 日均下载量
    neg_two_coll_avg DOUBLE ,      -- 日均收藏量
    -- neg_two_play_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_two_down_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_two_coll_slope DOUBLE ,    -- 回归线的斜率 
    -- 当月内不同语言的歌曲发布统计
    neg_two_pub_lan_inc0 INT ,
    neg_two_pub_lan_inc1 INT ,
    neg_two_pub_lan_inc2 INT ,
    neg_two_pub_lan_inc3 INT ,
    neg_two_pub_lan_inc4 INT ,
    neg_two_pub_lan_inc11 INT ,
    neg_two_pub_lan_inc12 INT ,
    neg_two_pub_lan_inc14 INT ,
    neg_two_pub_lan_inc100 INT ,
    -- 当月内不同语言的歌曲热度统计
    neg_two_pub_lan_inp0 INT ,
    neg_two_pub_lan_inp1 INT ,
    neg_two_pub_lan_inp2 INT ,
    neg_two_pub_lan_inp3 INT ,
    neg_two_pub_lan_inp4 INT ,
    neg_two_pub_lan_inp11 INT ,
    neg_two_pub_lan_inp12 INT ,
    neg_two_pub_lan_inp14 INT ,
    neg_two_pub_lan_inp100 INT ,
    -- 当月前不同语言的歌曲发布统计
    neg_two_pub_lan_bfc0 INT ,
    neg_two_pub_lan_bfc1 INT ,
    neg_two_pub_lan_bfc2 INT ,
    neg_two_pub_lan_bfc3 INT ,
    neg_two_pub_lan_bfc4 INT ,
    neg_two_pub_lan_bfc11 INT ,
    neg_two_pub_lan_bfc12 INT ,
    neg_two_pub_lan_bfc14 INT ,
    neg_two_pub_lan_bfc100 INT ,
    -- 当月前不同语言的歌曲热度统计
    neg_two_pub_lan_bfp0 INT ,
    neg_two_pub_lan_bfp1 INT ,
    neg_two_pub_lan_bfp2 INT ,
    neg_two_pub_lan_bfp3 INT ,
    neg_two_pub_lan_bfp4 INT ,
    neg_two_pub_lan_bfp11 INT ,
    neg_two_pub_lan_bfp12 INT ,
    neg_two_pub_lan_bfp14 INT ,
    neg_two_pub_lan_bfp100 INT ,




    ---------------------------------------------
    -----------1月前-----------------------------
    ---------------------------------------------
    neg_one_play_avg DOUBLE ,      -- 日均播放量
    neg_one_down_avg DOUBLE ,      -- 日均下载量
    neg_one_coll_avg DOUBLE ,      -- 日均收藏量
    -- neg_one_play_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_one_down_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_one_coll_slope DOUBLE ,    -- 回归线的斜率 
    -- 当月内不同语言的歌曲发布统计
    neg_one_pub_lan_inc0 INT ,
    neg_one_pub_lan_inc1 INT ,
    neg_one_pub_lan_inc2 INT ,
    neg_one_pub_lan_inc3 INT ,
    neg_one_pub_lan_inc4 INT ,
    neg_one_pub_lan_inc11 INT ,
    neg_one_pub_lan_inc12 INT ,
    neg_one_pub_lan_inc14 INT ,
    neg_one_pub_lan_inc100 INT ,
    -- 当月内不同语言的歌曲热度统计
    neg_one_pub_lan_inp0 INT ,
    neg_one_pub_lan_inp1 INT ,
    neg_one_pub_lan_inp2 INT ,
    neg_one_pub_lan_inp3 INT ,
    neg_one_pub_lan_inp4 INT ,
    neg_one_pub_lan_inp11 INT ,
    neg_one_pub_lan_inp12 INT ,
    neg_one_pub_lan_inp14 INT ,
    neg_one_pub_lan_inp100 INT ,
    -- 当月前不同语言的歌曲发布统计
    neg_one_pub_lan_bfc0 INT ,
    neg_one_pub_lan_bfc1 INT ,
    neg_one_pub_lan_bfc2 INT ,
    neg_one_pub_lan_bfc3 INT ,
    neg_one_pub_lan_bfc4 INT ,
    neg_one_pub_lan_bfc11 INT ,
    neg_one_pub_lan_bfc12 INT ,
    neg_one_pub_lan_bfc14 INT ,
    neg_one_pub_lan_bfc100 INT ,
    -- 当月前不同语言的歌曲热度统计
    neg_one_pub_lan_bfp0 INT ,
    neg_one_pub_lan_bfp1 INT ,
    neg_one_pub_lan_bfp2 INT ,
    neg_one_pub_lan_bfp3 INT ,
    neg_one_pub_lan_bfp4 INT ,
    neg_one_pub_lan_bfp11 INT ,
    neg_one_pub_lan_bfp12 INT ,
    neg_one_pub_lan_bfp14 INT ,
    neg_one_pub_lan_bfp100 INT ,



    ----------------------------------------
    -----------N天后的播放量----------------
    ----------------------------------------
    ndays INT ,  --N 天后
    ds STRING ,
    plays INT   --播放量

)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;


DROP TABLE IF EXISTS product_pred;
CREATE TABLE product_pred(
    artist_id STRING ,
    gender INT ,



    ---------------------------------------------
    -----------4月前-----------------------------
    ---------------------------------------------
    neg_four_play_avg DOUBLE ,      -- 日均播放量
    neg_four_down_avg DOUBLE ,      -- 日均下载量
    neg_four_coll_avg DOUBLE ,      -- 日均收藏量
    -- neg_four_play_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_four_down_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_four_coll_slope DOUBLE ,    -- 回归线的斜率 
    -- 当月内不同语言的歌曲发布统计
    neg_four_pub_lan_inc0 INT ,
    neg_four_pub_lan_inc1 INT ,
    neg_four_pub_lan_inc2 INT ,
    neg_four_pub_lan_inc3 INT ,
    neg_four_pub_lan_inc4 INT ,
    neg_four_pub_lan_inc11 INT ,
    neg_four_pub_lan_inc12 INT ,
    neg_four_pub_lan_inc14 INT ,
    neg_four_pub_lan_inc100 INT ,
    -- 当月内不同语言的歌曲热度统计
    neg_four_pub_lan_inp0 INT ,
    neg_four_pub_lan_inp1 INT ,
    neg_four_pub_lan_inp2 INT ,
    neg_four_pub_lan_inp3 INT ,
    neg_four_pub_lan_inp4 INT ,
    neg_four_pub_lan_inp11 INT ,
    neg_four_pub_lan_inp12 INT ,
    neg_four_pub_lan_inp14 INT ,
    neg_four_pub_lan_inp100 INT ,
    -- 当月前不同语言的歌曲发布统计
    neg_four_pub_lan_bfc0 INT ,
    neg_four_pub_lan_bfc1 INT ,
    neg_four_pub_lan_bfc2 INT ,
    neg_four_pub_lan_bfc3 INT ,
    neg_four_pub_lan_bfc4 INT ,
    neg_four_pub_lan_bfc11 INT ,
    neg_four_pub_lan_bfc12 INT ,
    neg_four_pub_lan_bfc14 INT ,
    neg_four_pub_lan_bfc100 INT ,
    -- 当月前不同语言的歌曲热度统计
    neg_four_pub_lan_bfp0 INT ,
    neg_four_pub_lan_bfp1 INT ,
    neg_four_pub_lan_bfp2 INT ,
    neg_four_pub_lan_bfp3 INT ,
    neg_four_pub_lan_bfp4 INT ,
    neg_four_pub_lan_bfp11 INT ,
    neg_four_pub_lan_bfp12 INT ,
    neg_four_pub_lan_bfp14 INT ,
    neg_four_pub_lan_bfp100 INT ,



    ---------------------------------------------
    -----------3月前-----------------------------
    ---------------------------------------------
    neg_three_play_avg DOUBLE ,      -- 日均播放量
    neg_three_down_avg DOUBLE ,      -- 日均下载量
    neg_three_coll_avg DOUBLE ,      -- 日均收藏量
    -- neg_three_play_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_three_down_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_three_coll_slope DOUBLE ,    -- 回归线的斜率 
    -- 当月内不同语言的歌曲发布统计
    neg_three_pub_lan_inc0 INT ,
    neg_three_pub_lan_inc1 INT ,
    neg_three_pub_lan_inc2 INT ,
    neg_three_pub_lan_inc3 INT ,
    neg_three_pub_lan_inc4 INT ,
    neg_three_pub_lan_inc11 INT ,
    neg_three_pub_lan_inc12 INT ,
    neg_three_pub_lan_inc14 INT ,
    neg_three_pub_lan_inc100 INT ,
    -- 当月内不同语言的歌曲热度统计
    neg_three_pub_lan_inp0 INT ,
    neg_three_pub_lan_inp1 INT ,
    neg_three_pub_lan_inp2 INT ,
    neg_three_pub_lan_inp3 INT ,
    neg_three_pub_lan_inp4 INT ,
    neg_three_pub_lan_inp11 INT ,
    neg_three_pub_lan_inp12 INT ,
    neg_three_pub_lan_inp14 INT ,
    neg_three_pub_lan_inp100 INT ,
    -- 当月前不同语言的歌曲发布统计
    neg_three_pub_lan_bfc0 INT ,
    neg_three_pub_lan_bfc1 INT ,
    neg_three_pub_lan_bfc2 INT ,
    neg_three_pub_lan_bfc3 INT ,
    neg_three_pub_lan_bfc4 INT ,
    neg_three_pub_lan_bfc11 INT ,
    neg_three_pub_lan_bfc12 INT ,
    neg_three_pub_lan_bfc14 INT ,
    neg_three_pub_lan_bfc100 INT ,
    -- 当月前不同语言的歌曲热度统计
    neg_three_pub_lan_bfp0 INT ,
    neg_three_pub_lan_bfp1 INT ,
    neg_three_pub_lan_bfp2 INT ,
    neg_three_pub_lan_bfp3 INT ,
    neg_three_pub_lan_bfp4 INT ,
    neg_three_pub_lan_bfp11 INT ,
    neg_three_pub_lan_bfp12 INT ,
    neg_three_pub_lan_bfp14 INT ,
    neg_three_pub_lan_bfp100 INT ,



    ---------------------------------------------
    -----------2月前-----------------------------
    ---------------------------------------------
    neg_two_play_avg DOUBLE ,      -- 日均播放量
    neg_two_down_avg DOUBLE ,      -- 日均下载量
    neg_two_coll_avg DOUBLE ,      -- 日均收藏量
    -- neg_two_play_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_two_down_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_two_coll_slope DOUBLE ,    -- 回归线的斜率 
    -- 当月内不同语言的歌曲发布统计
    neg_two_pub_lan_inc0 INT ,
    neg_two_pub_lan_inc1 INT ,
    neg_two_pub_lan_inc2 INT ,
    neg_two_pub_lan_inc3 INT ,
    neg_two_pub_lan_inc4 INT ,
    neg_two_pub_lan_inc11 INT ,
    neg_two_pub_lan_inc12 INT ,
    neg_two_pub_lan_inc14 INT ,
    neg_two_pub_lan_inc100 INT ,
    -- 当月内不同语言的歌曲热度统计
    neg_two_pub_lan_inp0 INT ,
    neg_two_pub_lan_inp1 INT ,
    neg_two_pub_lan_inp2 INT ,
    neg_two_pub_lan_inp3 INT ,
    neg_two_pub_lan_inp4 INT ,
    neg_two_pub_lan_inp11 INT ,
    neg_two_pub_lan_inp12 INT ,
    neg_two_pub_lan_inp14 INT ,
    neg_two_pub_lan_inp100 INT ,
    -- 当月前不同语言的歌曲发布统计
    neg_two_pub_lan_bfc0 INT ,
    neg_two_pub_lan_bfc1 INT ,
    neg_two_pub_lan_bfc2 INT ,
    neg_two_pub_lan_bfc3 INT ,
    neg_two_pub_lan_bfc4 INT ,
    neg_two_pub_lan_bfc11 INT ,
    neg_two_pub_lan_bfc12 INT ,
    neg_two_pub_lan_bfc14 INT ,
    neg_two_pub_lan_bfc100 INT ,
    -- 当月前不同语言的歌曲热度统计
    neg_two_pub_lan_bfp0 INT ,
    neg_two_pub_lan_bfp1 INT ,
    neg_two_pub_lan_bfp2 INT ,
    neg_two_pub_lan_bfp3 INT ,
    neg_two_pub_lan_bfp4 INT ,
    neg_two_pub_lan_bfp11 INT ,
    neg_two_pub_lan_bfp12 INT ,
    neg_two_pub_lan_bfp14 INT ,
    neg_two_pub_lan_bfp100 INT ,




    ---------------------------------------------
    -----------1月前-----------------------------
    ---------------------------------------------
    neg_one_play_avg DOUBLE ,      -- 日均播放量
    neg_one_down_avg DOUBLE ,      -- 日均下载量
    neg_one_coll_avg DOUBLE ,      -- 日均收藏量
    -- neg_one_play_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_one_down_slope DOUBLE ,    -- 回归线的斜率 
    -- neg_one_coll_slope DOUBLE ,    -- 回归线的斜率 
    -- 当月内不同语言的歌曲发布统计
    neg_one_pub_lan_inc0 INT ,
    neg_one_pub_lan_inc1 INT ,
    neg_one_pub_lan_inc2 INT ,
    neg_one_pub_lan_inc3 INT ,
    neg_one_pub_lan_inc4 INT ,
    neg_one_pub_lan_inc11 INT ,
    neg_one_pub_lan_inc12 INT ,
    neg_one_pub_lan_inc14 INT ,
    neg_one_pub_lan_inc100 INT ,
    -- 当月内不同语言的歌曲热度统计
    neg_one_pub_lan_inp0 INT ,
    neg_one_pub_lan_inp1 INT ,
    neg_one_pub_lan_inp2 INT ,
    neg_one_pub_lan_inp3 INT ,
    neg_one_pub_lan_inp4 INT ,
    neg_one_pub_lan_inp11 INT ,
    neg_one_pub_lan_inp12 INT ,
    neg_one_pub_lan_inp14 INT ,
    neg_one_pub_lan_inp100 INT ,
    -- 当月前不同语言的歌曲发布统计
    neg_one_pub_lan_bfc0 INT ,
    neg_one_pub_lan_bfc1 INT ,
    neg_one_pub_lan_bfc2 INT ,
    neg_one_pub_lan_bfc3 INT ,
    neg_one_pub_lan_bfc4 INT ,
    neg_one_pub_lan_bfc11 INT ,
    neg_one_pub_lan_bfc12 INT ,
    neg_one_pub_lan_bfc14 INT ,
    neg_one_pub_lan_bfc100 INT ,
    -- 当月前不同语言的歌曲热度统计
    neg_one_pub_lan_bfp0 INT ,
    neg_one_pub_lan_bfp1 INT ,
    neg_one_pub_lan_bfp2 INT ,
    neg_one_pub_lan_bfp3 INT ,
    neg_one_pub_lan_bfp4 INT ,
    neg_one_pub_lan_bfp11 INT ,
    neg_one_pub_lan_bfp12 INT ,
    neg_one_pub_lan_bfp14 INT ,
    neg_one_pub_lan_bfp100 INT ,



    ----------------------------------------
    -----------N天后的播放量----------------
    ----------------------------------------
    ndays INT ,  --N 天后
    ds STRING ,
    nplays INT   --播放量
    
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE;

