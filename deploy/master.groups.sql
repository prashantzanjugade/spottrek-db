-- Deploy spottrek:master.groups to pg

BEGIN;

create table master.groups (
	  id serial,
	  name varchar(100) not null,
	  subscription_from date not null,
	  subscription_to date not null,
	  spots bigint not null,
	  users integer not null,
	  custom_rate numeric(8,2) not null,
	  is_multiple_advertiser boolean,
	  created_on timestamp default now(),
	--created_by integer,
  primary key (id)
);

COMMIT;
