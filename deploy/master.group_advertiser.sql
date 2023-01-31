-- Deploy spottrek:master.group_advertiser to pg

BEGIN;

create table master.group_advertiser (
	  id serial,
	  group_id integer not null,
	  advertiser_id integer not null,
	  created_on timestamp default now(),
	  created_by integer not null,
	  primary key (id),
	  foreign key (group_id) references master.groups (id),
	  foreign key (created_by) references master.client(id)
);

COMMIT;
