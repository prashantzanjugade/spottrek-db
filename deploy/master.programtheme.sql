-- Deploy spottrek:master.programtheme to pg

BEGIN;

create table master.programtheme (
	  programthemecode integer,
	  programtheme text,
	  created_on timestamp default current_timestamp,
	  primary key (programthemecode)
);

COMMIT;
