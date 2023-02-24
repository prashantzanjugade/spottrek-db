-- Verify spottrek:master.groups on pg

BEGIN;

/*
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
*/

select
  id,
  name,
  client_type,
  subscription_from,
  subscription_to,
  spots,
  users,
  allocated_spots,
  allocated_users,
  custom_rate,
  is_multiple_advertiser,
  created_on
from master.group
where false;

ROLLBACK;
