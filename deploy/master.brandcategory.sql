-- Deploy spottrek:master.brandcategory to pg

BEGIN;

create table master.brandcategory (
	  brandcategory text,
	  brandcategorycode integer,
	  created_on timestamp default current_timestamp,
	  primary key (brandcategorycode)
);

COMMIT;
