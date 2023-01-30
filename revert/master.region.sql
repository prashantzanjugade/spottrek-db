-- Revert spottrek:master.region from pg

BEGIN;

DROP TABLE master.region;

COMMIT;
