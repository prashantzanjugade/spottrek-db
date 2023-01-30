-- Verify spottrek:master.contentlanguage on pg

BEGIN;

select
  contentlanguagecode,
  contentlanguage,
  created_on
from master.contentlanguage
where false;

ROLLBACK;
