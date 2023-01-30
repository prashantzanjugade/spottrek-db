-- Revert spottrek:master.contenttype from pg

BEGIN;

DROP TABLE master.contenttype;

COMMIT;
