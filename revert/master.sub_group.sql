-- Revert spottrek:master.sub_group from pg

BEGIN;

DROP TABLE master.sub_group;

COMMIT;
