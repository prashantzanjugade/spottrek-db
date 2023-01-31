-- Deploy spottrek:login_history to pg

BEGIN;

CREATE TYPE session_type_mst AS ENUM ('Login', 'Logout');

create table login_history (
	  id bigserial,
	  users_id integer not null,
	  token varchar(255) not null,
	  session_type session_type_mst not null, -- Login or Logout
	  user_agent varchar(255) not null,
	  ip_address varchar(100),
	  viewport_width integer,
	  viewport_height integer,
	  created_on timestamp default now(),
	  primary key (id),
	  foreign key (users_id) references master.users (id)
);

COMMIT;
