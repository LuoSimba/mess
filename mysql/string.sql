
-- 9.1.1 String Literals

-- 字符串用单引号，或者双引号都可以
-- 但是最好使用单引号(双引号意义受 ANSI_QUOTES 影响)
select 'a string';
select "another string";

-- 附近的字符串会拼接在一起
select 'a string';
select 'a' ' ' 'string';

-- RULE
-- A ' inside a string quoted with ' may be written as ''.
-- A " inside a string quoted with " may be written as "".
-- Precede the quote character by an escape character (\).
-- A ' inside a string quoted with " needs no special treatment
--  and need not be doubled or escaped.
--  In the same way, " inside a string quoted with ' needs no 
--  special treatment.


select 'jim''s bike';
select 'jim\'s bike';
select 'say "hello" to us';


