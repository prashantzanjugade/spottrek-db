-- Verify spottrek:master.users on pg

BEGIN;

select
  id,
  name,
  username,
  email,
  user_type,
  status,
  department,
  created_on,
  created_by,
  modified_on,
  modified_by
from master.users
where false;

ROLLBACK;
