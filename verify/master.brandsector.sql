-- Verify spottrek:master.brandsector on pg

BEGIN;

select
  brandsector,
  brandsectorcode,
  created_on
from master.brandsector
where false;

ROLLBACK;
