


select 1;

select (select 1);

select (select (select 1));

select (select (select (select 1)));




-- 子查询当做一张表使用
select * from (select 1);
-- ERROR: 1248: Every derived table must have its own alias
-- 因为子查询的返回是没有表名的，所以得起个别名才能使用
select * from (select 1) as t;

