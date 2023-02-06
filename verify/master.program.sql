-- Verify spottrek:master.program on pg

BEGIN;

/*
select
  id,
  channelcode,
  title,
  titlecode,
  programthemecode,
  programgenrecode,
  productionhouse,
  prodhouse,
  created_on
from master.program
where false;
*/

select
  id,
  channelcode,
  title,
  titlecode,
  programthemecode,
  programgenrecode,
  productionhouse,
  prodhouse,
  created_on
from master.program
where false;

ROLLBACK;
