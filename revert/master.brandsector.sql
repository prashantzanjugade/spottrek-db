-- Revert spottrek:master.brandsector from pg

BEGIN;

DROP TABLE master.brandsector;

COMMIT;
