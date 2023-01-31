-- Verify spottrek:master.descriptor on pg

BEGIN;

select
  descriptor,
  descriptorcode,
  created_on
from master.descriptor
where false;

ROLLBACK;
