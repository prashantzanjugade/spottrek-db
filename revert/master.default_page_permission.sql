-- Revert spottrek:master.default_page_permission from pg

BEGIN;

DROP TABLE master.default_page_permission;

COMMIT;
