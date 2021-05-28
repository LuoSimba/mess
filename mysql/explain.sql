-- mysql >
explain select 1;

    +----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+----------------+
    | id | select_type | table | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra          |
    +----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+----------------+
    |  1 | SIMPLE      | NULL  | NULL       | NULL | NULL          | NULL | NULL    | NULL | NULL |     NULL | No tables used |
    +----+-------------+-------+------------+------+---------------+------+---------+------+------+----------+----------------+

    1 row in set, 1 warning (0.0009 sec)

    Note (code 1003): /* select#1 */ select 1 AS `1`


-- type: 对表访问方式，表示 MySQL 在表中找到所需行的方式，又称访问类型。
-- 常用的类型有：
--    ALL: Full Table Scan, MySQL 将遍历全表以找到匹配的行
--  index: Full Index Scan, 遍历索引树
--  range
--    ref
-- eq_ref
--  const 
-- system
--   NULL: 不用访问表



explain select * from t_user where username = 'jim';
-- type: ALL
-- 当没有为 username 建立索引时，只能全表扫描

explain select * from t_user where id = 1;
-- type: NULL

explain select * from t_user where id < 10;
-- type: range




-- Extra
-- No tables used: Query 语句中使用 from dual 或不含任何 from 子句
