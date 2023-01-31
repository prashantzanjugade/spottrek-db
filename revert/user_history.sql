-- Revert spottrek:user_history from pg

BEGIN;

DROP TABLE user_history;

COMMIT;
