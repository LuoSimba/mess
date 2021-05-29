

select 1 union select 2;

-- 过滤相同结果，最终只显示一行
select 1 union select 1;

-- 两行结果都会保留
select 1 union all select 1;


-- 多个 select 语句
select 1 union select 2 union select 3;
-- 但不能指定合并的顺序
select 1 union (select 2 union select 3);
-- ERROR: 1235: This version of MySQL doesn't yet
--              support 'nesting of unions at the
--              right-hand side'

