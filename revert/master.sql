-- Revert spottrek:master from pg

BEGIN;

DROP SCHEMA IF NOT EXISTS master;

COMMIT;
