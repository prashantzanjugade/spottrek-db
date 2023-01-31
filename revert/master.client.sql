-- Revert spottrek:master.client from pg

BEGIN;

DROP TABLE master.client;

COMMIT;
