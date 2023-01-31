-- Verify spottrek:master.advertiser on pg

BEGIN;

select
  advertiser,
  advertisercode,
  advertisinggroupcode,
  created_on
from master.advertiser
where false;

ROLLBACK;
