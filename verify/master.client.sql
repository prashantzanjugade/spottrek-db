-- Verify spottrek:master.client on pg

BEGIN;

select
  modified_on,
  modified_by
from master.client
where false;

ROLLBACK;
