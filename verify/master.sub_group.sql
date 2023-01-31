-- Verify spottrek:master.sub_group on pg

BEGIN;

select
  id,
  name,
  group_id,
  created_on
from master.sub_group
where false;

ROLLBACK;
