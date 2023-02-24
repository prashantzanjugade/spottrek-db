-- Revert spottrek:master.groups from pg

BEGIN;

DROP TABLE master.group;

COMMIT;
