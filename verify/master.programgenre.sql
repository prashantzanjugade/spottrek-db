-- Verify spottrek:master.programgenre on pg

BEGIN;

select
  programgenrecode,
  programgenre,
  programthemecode,
  created_on
from master.programgenre
where false;

ROLLBACK;
