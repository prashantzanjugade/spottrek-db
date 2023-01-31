-- Deploy spottrek:master.user_page_permission to pg

BEGIN;

create table master.user_page_permission (
	  id bigserial,
	  users_id integer not null,
	  page_id integer not null,
	  created_on timestamp default now(),
	  created_by integer not null,
	  primary key (id),
	  foreign key (users_id) references master.users (id),
	  foreign key (page_id) references master.page (id),
	  foreign key (created_by) references master.client(id)
);

COMMIT;
