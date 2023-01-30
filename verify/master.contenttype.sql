-- Verify spottrek:master.contenttype on pg

BEGIN;

select
  contenttype,
  contenttypecode,
  created_on
from master.contenttype
where false;

ROLLBACK;
