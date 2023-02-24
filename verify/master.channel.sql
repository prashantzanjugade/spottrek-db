-- Verify spottrek:master.channel on pg

BEGIN;

select
  channel,
  channelcode,
  networkcode,
  contentlanguagecode,
  regioncode,
  genrecode,
  genre,
  created_on
from master.channel
where false;

ROLLBACK;
