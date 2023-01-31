-- Verify spottrek:master.group_advertiser on pg

BEGIN;

select
  id,
  group_id,
  advertiser_id,
  created_on,
  created_by
from master.group_advertiser
where false;

ROLLBACK;
