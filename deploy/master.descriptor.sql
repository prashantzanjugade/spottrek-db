-- Deploy spottrek:master.descriptor to pg

BEGIN;

/*
create table master.descriptor (
	  descriptor text,
	  descriptorcode integer,
	  created_on timestamp default current_timestamp,
	  primary key (descriptorcode)
);
*/

create table master.descriptor (
	  id serial,
	  descriptor text,
	  descriptorcode integer,
	  created_on timestamp default current_timestamp,
	  primary key (id),
	  UNIQUE(descriptor,descriptorcode)
);

COMMIT;
