-- Deploy spottrek:master.brandsector to pg

BEGIN;

create table master.brandsector (
	  brandsector text,
	  brandsectorcode integer,
	  created_on timestamp default current_timestamp,
	  primary key (brandsectorcode)
);

COMMIT;
