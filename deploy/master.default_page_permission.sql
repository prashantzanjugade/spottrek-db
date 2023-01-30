-- Deploy spottrek:master.default_page_permission to pg

BEGIN;

CREATE TABLE master.default_page_permission (
	  id serial,
	  user_type_id integer not null,
	  page_id integer not null,
	  created_on timestamp default now(),
	  primary key (id),
	  foreign key (user_type_id) references master.user_type (id),
	  foreign key (page_id) references master.page (id)
);

COMMIT;
