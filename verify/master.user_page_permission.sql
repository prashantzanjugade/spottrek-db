-- Verify spottrek:master.user_page_permission on pg

BEGIN;

select
  id,
  users_id,
  page_id,
  created_on,
  created_by
from master.user_page_permission
where false;

ROLLBACK;
