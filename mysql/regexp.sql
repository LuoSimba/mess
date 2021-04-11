-- 
-- 使用正则表达式
--


-- 模式匹配
-- 出现三个字符
select * from user where account regexp '...';

-- 只有三个字符
select * from user where account regexp '^...$';

-- 含有字符 w
select * from user where account regexp 'w';


