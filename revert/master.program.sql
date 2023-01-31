-- Revert spottrek:master.program from pg

BEGIN;

DROP TABLE master.program;

COMMIT;
