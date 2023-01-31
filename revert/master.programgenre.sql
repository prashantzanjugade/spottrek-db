-- Revert spottrek:master.programgenre from pg

BEGIN;

DROP TABLE master.programgenre;

COMMIT;
