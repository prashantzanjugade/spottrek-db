-- Verify spottrek:master.client_user on pg

BEGIN;

select
  id,
  password,
  client_id,
  users_id,
  is_all_advertiser
from master.client_user
where false;

ROLLBACK;
