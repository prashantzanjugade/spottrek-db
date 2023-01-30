-- Verify spottrek:master.page on pg

BEGIN;

select id,name,remarks,created_on from master.page;

ROLLBACK;
