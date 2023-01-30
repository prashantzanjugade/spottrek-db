-- Verify spottrek:master.network on pg

BEGIN;

select
  networkname,
  networkcode,
  created_on
from master.network
where false;

ROLLBACK;
