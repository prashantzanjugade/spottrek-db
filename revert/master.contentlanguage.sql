-- Revert spottrek:master.contentlanguage from pg

BEGIN;

DROP TABLE master.contentlanguage;

COMMIT;
