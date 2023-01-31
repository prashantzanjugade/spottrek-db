-- Verify spottrek:login_history on pg

BEGIN;

select
  id,
  users_id,
  token,
  session_type,
  user_agent,
  ip_address,
  viewport_width,
  viewport_height,
  created_on
from login_history
where false;

ROLLBACK;
