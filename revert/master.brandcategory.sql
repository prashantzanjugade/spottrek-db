-- Revert spottrek:master.brandcategory from pg

BEGIN;

DROP TABLE master.brandcategory;

COMMIT;
