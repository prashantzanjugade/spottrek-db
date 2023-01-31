-- Revert spottrek:master.advertiser from pg

BEGIN;

DROP TABLE master.advertiser;

COMMIT;
