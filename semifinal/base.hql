CREATE TABLE IF NOT EXISTS future_date 
AS SELECT
    date_add("2015-08-31 00:00:00", t.num) ds,
    (case t.num > 30 then 2 else 1 end) months,
    cast((t.num / 7) as int) weekths,
    (t.num + 1) days,
    select t.num from (select ng(0,62) as (num) from dual) t;
