-- Deploy spottrek:master to pg

BEGIN;

CREATE SCHEMA IF NOT EXISTS master;

COMMIT;
