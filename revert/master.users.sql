-- Revert spottrek:master.users from pg

BEGIN;

DROP TABLE master.users;

COMMIT;
