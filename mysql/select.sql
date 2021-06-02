

-- 将会选择所有行
SELECT cat_id FROM ecs_goods_cat WHERE true;

-- 将会选择空
SELECT cat_id FROM ecs_goods_cat WHERE false;

select 1 where true;
-- +---+
-- | 1 |
-- +---+
-- | 1 |
-- +---+
-- 1 row in set (0.0003 sec)
select 1 where false;
-- Empty set (0.0003 sec)





-- SELECT 执行顺序
select distinct 
    <select_list>
from 
    <left_table>
<join_type> join
    <right_table>
on
    <join_condition>
where
    <where_condition>
group by
    <group_by_list>
having
    <having_condition>
order by
    <order_by_condition>
limit <limit number>;


-- 执行顺序
1. from <left_table><join_type>
2. on <join_condition>
3. <join_type> join <right_table>
4. where <where_condition>
5. group by <group_by_list>
6. having <having_condition>
7. select 
8. distinct <select_list>
9. order by <order_by_condition>
10. limit <limit_number>




