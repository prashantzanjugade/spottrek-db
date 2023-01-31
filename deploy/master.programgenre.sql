-- Deploy spottrek:master.programgenre to pg

BEGIN;

create table master.programgenre (
	  programgenrecode integer,
	  programgenre text,
	  programthemecode integer,
	  created_on timestamp default current_timestamp,
	  primary key (programgenrecode),
	  foreign key (programthemecode) references master.programtheme (programthemecode)
);

COMMIT;
