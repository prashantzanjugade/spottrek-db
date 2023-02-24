-- Deploy spottrek:master.groups to pg

BEGIN;

/*
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
*/



create table master.group (
  id serial,
  name varchar(100) not null,
  client_type integer not null,
  subscription_from date not null,
  subscription_to date not null,
  spots bigint not null,
  users integer not null,
  allocated_spots bigint default 0,
  allocated_users integer default 0,
  custom_rate numeric(8,2) not null,
  is_multiple_advertiser boolean,
  created_on timestamp default now(),
  primary key (id)
);

comment on column master.group.client_type is '1 for Advertiser, 2 for Broadcaster, 3 for Agency, 4 for Other';

COMMIT;
