-- Revert spottrek:master.group_advertiser from pg

BEGIN;

DROP TABLE master.group_advertiser;

COMMIT;
