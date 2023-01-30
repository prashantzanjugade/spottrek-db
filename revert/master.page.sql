-- Revert spottrek:master.page from pg

BEGIN;

drop table master.page;

COMMIT;
