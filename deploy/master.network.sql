-- Deploy spottrek:master.network to pg

BEGIN;

create table master.network (
	  networkname text,
	  networkcode integer,
	  created_on timestamp default current_timestamp,
	  primary key (networkcode)
);

COMMIT;
