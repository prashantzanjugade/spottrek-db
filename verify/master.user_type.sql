-- Verify spottrek:master.user_type on pg

BEGIN;

select * from master.user_type where false;

ROLLBACK;
