-- Revert spottrek:master.user_type from pg

BEGIN;

DROP TABLE master.user_type;

COMMIT;
