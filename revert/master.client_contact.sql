-- Revert spottrek:master.client_contact from pg

BEGIN;

DROP TABLE master.client_contact;

COMMIT;
