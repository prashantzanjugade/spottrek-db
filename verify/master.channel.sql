-- Verify spottrek:master.channel on pg

BEGIN;

select
  channel,
  channelcode,
  networkcode,
  contentlanguagecode,
  regioncode,
  programgenrecode,
  created_on
from master.channel
where false;

ROLLBACK;
