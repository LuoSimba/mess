-- 一些基本操作

-- 更改主键自增值
alter table t
    auto_increment = 100;


-- -----------------------------------
-- 索引相关
-- -----------------------------------


-- 查看索引
show index from t;


-- 如果表数据很大，那么添加索引需要更多的时间
-- 在一张大表(1212000行)上添加一个索引
create index part_of_name on t (order_id);
--    Query OK, 1212000 rows affected (33.35 sec)
--    Records: 1212000  Duplicates: 0  Warnings: 0

-- 在大表上删除索引也很慢
drop index part_of_name on t;
--    Query OK, 1212000 rows affected (23.88 sec)
--    Records: 1212000  Duplicates: 0  Warnings: 0



-- -----------------------------------
-- 函数
-- -----------------------------------
select row_count();
select left('abcd', 2);
select unix_timestamp();
select unix_timestamp(
    CAST( now() as DATE )
);


