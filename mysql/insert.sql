

create table t(aa int);

-- 插入记录时，没有列名也是可以的。
insert into t() values();




create table t (id int not null);

-- Warning: ...
set sql_mode = '';
insert into t() values();

-- Error: ...
set sql_mode = 'STRICT_TRANS_TABLES';
insert into t() values();

