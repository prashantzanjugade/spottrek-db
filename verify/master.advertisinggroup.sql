-- Verify spottrek:master.advertisinggroup on pg

BEGIN;

/*
select
  advertisinggroup,
  advertisinggroupcode,
  created_on
from master.advertisinggroup
where false;
*/

ROLLBACK;
