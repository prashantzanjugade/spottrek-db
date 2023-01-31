-- Revert spottrek:master.channel from pg

BEGIN;

DROP TABLE master.channel;

COMMIT;
