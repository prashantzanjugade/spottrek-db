-- Verify spottrek:master.descriptor on pg

BEGIN;

select
  id,
  descriptor,
  descriptorcode,
  created_on
from master.descriptor
where false;

ROLLBACK;
