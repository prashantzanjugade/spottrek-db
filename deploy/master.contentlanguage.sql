-- Deploy spottrek:master.contentlanguage to pg

BEGIN;

create table master.contentlanguage (
	  contentlanguagecode integer,
	  contentlanguage text,
	  created_on timestamp default current_timestamp,
	  primary key (contentlanguagecode)
);

COMMIT;
