-- Revert spottrek:master.user_page_permission from pg

BEGIN;

DROP TABLE master.user_page_permission;

COMMIT;
