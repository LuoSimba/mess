

-- 返回当前 UNIX 时间戳
-- INTEGER
select unix_timestamp();


-- 当前的日期时间
-- DATETIME
select now();


-- 类型转换 DATETIME --> DATE
select CAST( now() as DATE );
-- 相当于
select current_date();



-- 得到今天 00:00 的时间戳
select unix_timestamp(
    CAST( now() as DATE )
);
-- 相当于
select unix_timestamp(
    current_date()
);


-- error: 参数不正确
select from_unixtime();
-- 将时间戳转化为 DATETIME
select from_unixtime( 1621612800 );

