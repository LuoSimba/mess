
-- 表连接

INNER JOIN ; -- 内连接
OUTER JOIN ;
CROSS JOIN ; -- 交叉连接、笛卡尔积

-- 交叉连接是内连接的一种

-- In MySQL, these are syntactic equivalents:
JOIN === CROSS JOIN === INNER JOIN;
-- In standard SQL, they are not equivalent:
-- INNER JOIN is used with an ON clause,
-- CROSS JOIN is used otherwise.
-- 在 MySQL 里 CROSS JOIN 与 INNER JOIN 是等价的。
-- CROSS JOIN 不允许有连接条件。(标准)


OUTER JOIN {
    LEFT OUTER JOIN;  -- 左外连接
    RIGHT OUTER JOIN; -- 右外连接
    FULL OUTER JOIN;  -- 全外连接
}

FULL OUTER JOIN = (LEFT OUTER JOIN) UNION (RIGHT OUTER JOIN);


-- 显式交叉连接
select * from table_a cross join table_b;
-- 隐式交叉连接
select * from table_a, table_b;

