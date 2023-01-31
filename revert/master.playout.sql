-- Revert spottrek:master.playout from pg

BEGIN;

DROP TABLE master.playout;

COMMIT;
