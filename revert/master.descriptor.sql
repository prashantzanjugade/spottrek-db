-- Revert spottrek:master.descriptor from pg

BEGIN;

DROP TABLE master.descriptor;

COMMIT;
