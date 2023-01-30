-- Revert spottrek:master.network from pg

BEGIN;

DROP TABLE master.network;

COMMIT;
