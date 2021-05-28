

-- ERROR: 1096: No tables used
select * from dual;


select count(*) from dual;
-- result = 1

-- You are permitted to specify DUAL as a dummy
-- table name in situations where no tables 
-- are referenced:
select 1 from dual;
select 1 + 2 from dual;

-- DUAL is purely for the convenience of people who
-- require that all SELECT statements should have
-- FROM and possibly other clauses.
-- MySQL may ignore the clauses.
-- MySQL does not require FROM DUAL if no tables 
-- are referenced.

