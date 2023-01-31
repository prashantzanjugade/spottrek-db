-- Deploy spottrek:master.account_manager to pg

BEGIN;

create table master.account_manager (
	  id serial,
	  name varchar(100) not null,
	  designation varchar(100) not null,
	  mobile varchar(15),
	  status smallint default 1, -- 1 for active, 0 for inactive
	  created_on timestamp default now(),
	  primary key (id)
);

comment on column master.account_manager.status is '1 for active, 0 for inactive';

COMMIT;
