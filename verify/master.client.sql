-- Verify spottrek:master.client on pg

BEGIN;

select 
  id,
  name,
  group_id,
--sub_group_id,
  client_type, -- broadcaster, agency, advertiser, other
  spots,
  consumed_spots,
  account_manager_id,
  finance_code,
  address,
  users,
  auto_csv,
  userwise_subscription,
  tolerance_days,
  created_on,
  created_by,
  status, -- 1 for active, 0 for inactive,
  suspend_date,
  modified_on,
  modified_by
from master.client
where false;

ROLLBACK;
