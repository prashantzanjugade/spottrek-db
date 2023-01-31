-- Deploy spottrek:user_history to pg

BEGIN;

create table user_history (
	  id bigserial,
	  users_id integer not null,
	  old_value text not null,
	  new_value text not null,
	  created_on timestamp default now(),
	  primary key (id),
	  foreign key (users_id) references master.users (id)
);

COMMIT;
