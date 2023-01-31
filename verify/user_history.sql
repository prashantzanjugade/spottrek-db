-- Verify spottrek:user_history on pg

BEGIN;

select
  id,
  users_id,
  old_value,
  new_value,
  created_on
from user_history
where false;

ROLLBACK;
