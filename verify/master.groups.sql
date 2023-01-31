-- Verify spottrek:master.groups on pg

BEGIN;

select
  name,
  subscription_from,
  subscription_to,
  spots,
  users,
  custom_rate,
  is_multiple_advertiser,
  created_on
from master.groups
where false;

ROLLBACK;
