-- Revert spottrek:master.account_manager from pg

BEGIN;

DROP TABLE master.account_manager;

COMMIT;
