-- Deploy spottrek:master.advertisinggroup to pg

BEGIN;

create table master.advertisinggroup (
	  advertisinggroup text,
	  advertisinggroupcode integer,
	  created_on timestamp default current_timestamp,
	  primary key (advertisinggroupcode)
);

COMMIT;
