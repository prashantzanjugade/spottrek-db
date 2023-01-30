-- Deploy spottrek:master.contenttype to pg

BEGIN;

create table master.contenttype (
	  contenttype text,
	  contenttypecode integer,
	  created_on timestamp default current_timestamp,
	  primary key (contenttypecode)
);

COMMIT;
