-- Revert spottrek:master.client_user from pg

BEGIN;

DROP TABLE master.client_user;

COMMIT;
