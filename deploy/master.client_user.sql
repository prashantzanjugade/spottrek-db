-- Deploy spottrek:master.client_user to pg

BEGIN;

create table master.client_user (
         id bigserial,
	password varchar(255) not null,
	client_id integer,
	users_id bigint,
	is_all_advertiser boolean not null,
	primary key (id),
	foreign key (users_id) references master.users (id),
	foreign key (client_id) references master.client(id)
);

COMMIT;
