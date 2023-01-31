-- Revert spottrek:master.brand from pg

BEGIN;

DROP TABLE master.brand;

COMMIT;
