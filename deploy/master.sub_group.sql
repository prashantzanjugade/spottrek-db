-- Deploy spottrek:master.sub_group to pg

BEGIN;

create table master.sub_group (
	  id serial,
	  name varchar(100) not null,
	  group_id integer not null,
	  created_on timestamp default now(),
	--created_by integer,
  	  primary key (id),
          foreign key (group_id) references master.group (id)
);

COMMIT;
