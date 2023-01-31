-- Verify spottrek:master.brand on pg

BEGIN;

select
  brandname,
  brandnamecode,
  brandsectorcode,
  brandcategorycode,
  advertisercode,
  descriptorcode,
  brandtype,
  created_on
from master.brand
where false;

ROLLBACK;
