-- Revert spottrek:login_history from pg

BEGIN;

DROP TABLE login_history;

DROP TYPE session_type_mst;

COMMIT;
