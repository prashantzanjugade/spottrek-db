-- Revert spottrek:master.programtheme from pg

BEGIN;

DROP TABLE master.programtheme;

COMMIT;
