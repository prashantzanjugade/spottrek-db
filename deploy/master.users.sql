-- Deploy spottrek:master.users to pg

BEGIN;

create table master.users (
	  id serial,
	  name varchar(100) not null,
	  username varchar(100) not null,
	  email varchar(100) not null,
	  user_type integer not null,
	  status smallint default 1,
	  department varchar(100),
	  created_on timestamp default now(),
	  created_by integer not null,
	  modified_on timestamp,
	  modified_by integer,
	  primary key (id),
	  foreign key (user_type) references master.user_type (id)
);

comment on column master.users.status is '1 for active, 0 for inactive';

INSERT INTO master.users ("name", username, email, user_type, created_by) VALUES
('sysuser', 'sysuser', '', 1, 1),
('superadmin', 'superadmin', '', 1, 1);

COMMIT;
