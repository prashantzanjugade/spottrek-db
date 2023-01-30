-- Revert spottrek:master from pg

BEGIN;

DROP SCHEMA IF EXISTS master;

COMMIT;
