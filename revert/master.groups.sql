-- Revert spottrek:master.groups from pg

BEGIN;

DROP TABLE master.groups;

COMMIT;
