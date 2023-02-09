-- Verify spottrek:master.brand on pg

BEGIN;

/*
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
*/

select
  id,
  brandname,
  brandnamecode,
  brandsectorcode,
  brandcategorycode,
  advertiser_id,
  descriptor_id,
  brandtype,
  created_on
from master.brand
where false;

ROLLBACK;
