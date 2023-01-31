-- Verify spottrek:master.brandcategory on pg

BEGIN;

select
  brandcategory,
  brandcategorycode,
  created_on
from master.brandcategory
where false;

ROLLBACK;
