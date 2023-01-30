-- Verify spottrek:master.default_page_permission on pg

BEGIN;

select id,user_type_id,page_id,created_on from master.default_page_permission
where false;

ROLLBACK;
