-- Verify spottrek:master.programtheme on pg

BEGIN;

select
  programthemecode,
  programtheme,
  created_on
from master.programtheme
where false;

ROLLBACK;
