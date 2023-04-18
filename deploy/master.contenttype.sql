-- Deploy spottrek:master.contenttype to pg

BEGIN;

create table master.contenttype (
	  contenttype text,
	  contenttypecode integer,
	  created_on timestamp default current_timestamp,
	  primary key (contenttypecode)
);

INSERT INTO master.contenttype (contenttype, contenttypecode) VALUES ('Program', 101), ('Promo', 102), ('Commercial', 103), ('Feed Missing', 104), ('ICA', 105);

COMMIT;
